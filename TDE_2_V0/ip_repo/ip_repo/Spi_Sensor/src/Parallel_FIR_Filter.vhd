----------------------------------------------------------------------------------
-- Company: ADCOM
-- Engineer: Ron Engelshtein
-- 
-- Create Date: 11/16/2022 04:04:21 PM
-- Design Name: Fir Filter
-- Module Name: Parallel_FIR_Filter - Behavioral
-- Project Name: TDE_2
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Parallel_FIR_Filter is
    Generic (
        FILTER_TAPS  : integer := 119;
        INPUT_WIDTH  : integer range 8 to 25 := 18; 
        COEFF_WIDTH  : integer range 8 to 30 := 16;
        OUTPUT_WIDTH : integer range 8 to 43 := 18    -- This should be < (Input+Coeff width-1) 
    );
    Port ( 
           clk    : in STD_LOGIC;
           enable : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
           data_o : out STD_LOGIC_VECTOR (OUTPUT_WIDTH-1 downto 0)
           );
end Parallel_FIR_Filter;

architecture Behavioral of Parallel_FIR_Filter is

attribute use_dsp : string;
attribute use_dsp of Behavioral : architecture is "yes";

constant MAC_WIDTH : integer := COEFF_WIDTH+INPUT_WIDTH;

type input_registers is array(0 to FILTER_TAPS-1) of signed(INPUT_WIDTH-1 downto 0);
signal areg_s  : input_registers := (others=>(others=>'0'));

type coeff_registers is array(0 to FILTER_TAPS-1) of signed(COEFF_WIDTH-1 downto 0);
signal breg_s : coeff_registers := (others=>(others=>'0'));

type mult_registers is array(0 to FILTER_TAPS-1) of signed(INPUT_WIDTH+COEFF_WIDTH-1 downto 0);
signal mreg_s : mult_registers := (others=>(others=>'0'));

type dsp_registers is array(0 to FILTER_TAPS-1) of signed(MAC_WIDTH-1 downto 0);
signal preg_s : dsp_registers := (others=>(others=>'0'));

signal dout_s : std_logic_vector(MAC_WIDTH-1 downto 0);
signal sign_s : signed(MAC_WIDTH-INPUT_WIDTH-COEFF_WIDTH+1 downto 0) := (others=>'0');

--type coefficients is array (0 to FILTER_TAPS-1) of signed(COEFF_WIDTH-1 downto 0);
--signal coeff_s: coefficients :=( 
---- Blackman 500Hz LPF
--x"0005", x"0001", x"0005", x"000C", 
--x"0016", x"0025", x"0037", x"004E", 
--x"0069");

-- Chebyshev 1kH LPF, causes overflow at low freq. 
--type coefficients is array (0 to 59) of signed( 15 downto 0);
--signal coeff_s: coefficients :=( 
--x"FFFF", x"FFFF", x"FFFF", x"FFFF", x"FFFF", x"FFFE", 
--x"FFFE", x"FFFF", x"0001", x"0007", x"0011", x"0022", 
--x"003B", x"005E", x"008E", x"00CD", x"011C", x"017C", 
--x"01ED", x"026F", x"02FF", x"0399", x"0439", x"04D9", 
--x"0573", x"0601", x"067B", x"06DD", x"0721", x"0744", 
--x"0744", x"0721", x"06DD", x"067B", x"0601", x"0573", 
--x"04D9", x"0439", x"0399", x"02FF", x"026F", x"01ED", 
--x"017C", x"011C", x"00CD", x"008E", x"005E", x"003B", 
--x"0022", x"0011", x"0007", x"0001", x"FFFF", x"FFFE", 
--x"FFFE", x"FFFF", x"FFFF", x"FFFF", x"FFFF", x"FFFF");
type coefficients is array (0 to 118) of signed( 15 downto 0);
signal coeff_s: coefficients :=( 
x"FFFF", x"FFFD", x"FFFA", x"FFFD", x"0003", x"0005", x"FFFE", x"FFF7", x"FFFF", x"000C", 
x"0005", x"FFF2", x"FFF3", x"000E", x"0017", x"FFF7", x"FFDE", x"FFFF", x"002C", x"0010", 
x"FFCF", x"FFDA", x"0031", x"0040", x"FFDA", x"FFA4", x"0010", x"0076", x"0014", x"FF77", 
x"FFBA", x"008F", x"0083", x"FF7F", x"FF39", x"0059", x"010B", x"FFEC", x"FEBA", x"FFB1", 
x"016B", x"00D4", x"FE91", x"FE8C", x"0143", x"022A", x"FF2A", x"FD14", x"0017", x"03AF", 
x"0118", x"FB99", x"FD12", x"0506", x"05F5", x"FA80", x"F3CA", x"05CE", x"2847", x"3A16", 
x"2847", x"05CE", x"F3CA", x"FA80", x"05F5", x"0506", x"FD12", x"FB99", x"0118", x"03AF", 
x"0017", x"FD14", x"FF2A", x"022A", x"0143", x"FE8C", x"FE91", x"00D4", x"016B", x"FFB1", 
x"FEBA", x"FFEC", x"010B", x"0059", x"FF39", x"FF7F", x"0083", x"008F", x"FFBA", x"FF77", 
x"0014", x"0076", x"0010", x"FFA4", x"FFDA", x"0040", x"0031", x"FFDA", x"FFCF", x"0010", 
x"002C", x"FFFF", x"FFDE", x"FFF7", x"0017", x"000E", x"FFF3", x"FFF2", x"0005", x"000C", 
x"FFFF", x"FFF7", x"FFFE", x"0005", x"0003", x"FFFD", x"FFFA", x"FFFD", x"FFFF");

--type coefficients is array (0 to 109) of signed( 15 downto 0);
--signal coeff_s: coefficients :=( 
--x"FFFF", x"FFFF", x"0001", x"0000", x"FFFE", x"0000", 
--x"0004", x"FFFF", x"FFFA", x"0004", x"0009", x"FFF7", 
--x"FFF6", x"0010", x"0008", x"FFE7", x"FFFD", x"0024", 
--x"FFFA", x"FFD1", x"0018", x"0036", x"FFCF", x"FFCA", 
--x"0051", x"002A", x"FF8B", x"FFF0", x"0098", x"FFE3", 
--x"FF4B", x"005F", x"00C2", x"FF4C", x"FF4B", x"0119", 
--x"0084", x"FE7B", x"FFDD", x"01EB", x"FF8D", x"FDC5", 
--x"014B", x"025E", x"FD94", x"FDC9", x"03E4", x"019C", 
--x"FA28", x"FFCD", x"08C2", x"FCF9", x"F136", x"0E77", 
--x"3DB3", x"3DB3", x"0E77", x"F136", x"FCF9", x"08C2", 
--x"FFCD", x"FA28", x"019C", x"03E4", x"FDC9", x"FD94", 
--x"025E", x"014B", x"FDC5", x"FF8D", x"01EB", x"FFDD", 
--x"FE7B", x"0084", x"0119", x"FF4B", x"FF4C", x"00C2", 
--x"005F", x"FF4B", x"FFE3", x"0098", x"FFF0", x"FF8B", 
--x"002A", x"0051", x"FFCA", x"FFCF", x"0036", x"0018", 
--x"FFD1", x"FFFA", x"0024", x"FFFD", x"FFE7", x"0008", 
--x"0010", x"FFF6", x"FFF7", x"0009", x"0004", x"FFFA", 
--x"FFFF", x"0004", x"0000", x"FFFE", x"0000", x"0001", 
--x"FFFF", x"FFFF");


--x"FFFF2F90", x"FFFFAB25", x"0001B975", x"0000BB4B", x"FFFD5DE7", x"00001227", x"0004C684", x"FFFEBB7E", x"FFF92866", x"00045737", 
--x"00091565", x"FFF6CA14", x"FFF5E03F", x"0010924A", x"0008FEA4", x"FFE60013", x"FFFC1AC4", x"0024C9DB", x"FFF94DE8", x"FFD0F669", 
--x"00183A25", x"003608D2", x"FFCEC737", x"FFC9F208", x"00510089", x"002AE4DE", x"FF8AF333", x"FFEFB030", x"0098CB3E", x"FFE2E76F", 
--x"FF4A8AA0", x"005F0C08", x"00C25B11", x"FF4B629F", x"FF4A957E", x"0119771E", x"00840881", x"FE7AB6F7", x"FFDC0AAC", x"01EB802F", 
--x"FF8C02CD", x"FDC4E180", x"014BE9C1", x"025E3B11", x"FD938D43", x"FDC82808", x"03E43E89", x"019C1622", x"FA2759EF", x"FFCC3F6F", 
--x"08C28735", x"FCF88F50", x"F135164C", x"0E772398", x"3DB3D6C8", x"3DB3D6C8", x"0E772398", x"F135164C", x"FCF88F50", x"08C28735", 
--x"FFCC3F6F", x"FA2759EF", x"019C1622", x"03E43E89", x"FDC82808", x"FD938D43", x"025E3B11", x"014BE9C1", x"FDC4E180", x"FF8C02CD", 
--x"01EB802F", x"FFDC0AAC", x"FE7AB6F7", x"00840881", x"0119771E", x"FF4A957E", x"FF4B629F", x"00C25B11", x"005F0C08", x"FF4A8AA0", 
--x"FFE2E76F", x"0098CB3E", x"FFEFB030", x"FF8AF333", x"002AE4DE", x"00510089", x"FFC9F208", x"FFCEC737", x"003608D2", x"00183A25", 
--x"FFD0F669", x"FFF94DE8", x"0024C9DB", x"FFFC1AC4", x"FFE60013", x"0008FEA4", x"0010924A", x"FFF5E03F", x"FFF6CA14", x"00091565", 
--x"00045737", x"FFF92866", x"FFFEBB7E", x"0004C684", x"00001227", x"FFFD5DE7", x"0000BB4B", x"0001B975", x"FFFFAB25", x"FFFF2F90");
-- 500Hz Blackman LPF
--x"0000", x"0001", x"0005", x"000C", 
--x"0016", x"0025", x"0037", x"004E", 
--x"0069", x"008B", x"00B2", x"00E0", 
--x"0114", x"014E", x"018E", x"01D3", 
--x"021D", x"026A", x"02BA", x"030B", 
--x"035B", x"03AA", x"03F5", x"043B", 
--x"047B", x"04B2", x"04E0", x"0504", 
--x"051C", x"0528", x"0528", x"051C", 
--x"0504", x"04E0", x"04B2", x"047B", 
--x"043B", x"03F5", x"03AA", x"035B", 
--x"030B", x"02BA", x"026A", x"021D", 
--x"01D3", x"018E", x"014E", x"0114", 
--x"00E0", x"00B2", x"008B", x"0069", 
--x"004E", x"0037", x"0025", x"0016", 
--x"000C", x"0005", x"0001", x"0000");
--type coefficients is array (0 to 109) of signed( 15 downto 0);
--signal coeff_s: coefficients :=( 
--x"FFFF", x"FFFF", x"0001", x"0000", x"FFFE", x"0000", 
--x"0004", x"FFFF", x"FFFA", x"0004", x"0009", x"FFF7", 
--x"FFF6", x"0010", x"0008", x"FFE7", x"FFFD", x"0024", 
--x"FFFA", x"FFD1", x"0018", x"0036", x"FFCF", x"FFCA", 
--x"0051", x"002A", x"FF8B", x"FFF0", x"0098", x"FFE3", 
--x"FF4B", x"005F", x"00C2", x"FF4C", x"FF4B", x"0119", 
--x"0084", x"FE7B", x"FFDD", x"01EB", x"FF8D", x"FDC5", 
--x"014B", x"025E", x"FD94", x"FDC9", x"03E4", x"019C", 
--x"FA28", x"FFCD", x"08C2", x"FCF9", x"F136", x"0E77", 
--x"3DB3", x"3DB3", x"0E77", x"F136", x"FCF9", x"08C2", 
--x"FFCD", x"FA28", x"019C", x"03E4", x"FDC9", x"FD94", 
--x"025E", x"014B", x"FDC5", x"FF8D", x"01EB", x"FFDD", 
--x"FE7B", x"0084", x"0119", x"FF4B", x"FF4C", x"00C2", 
--x"005F", x"FF4B", x"FFE3", x"0098", x"FFF0", x"FF8B", 
--x"002A", x"0051", x"FFCA", x"FFCF", x"0036", x"0018", 
--x"FFD1", x"FFFA", x"0024", x"FFFD", x"FFE7", x"0008", 
--x"0010", x"FFF6", x"FFF7", x"0009", x"0004", x"FFFA", 
--x"FFFF", x"0004", x"0000", x"FFFE", x"0000", x"0001", 
--x"FFFF", x"FFFF");

begin  

-- Coefficient formatting
Coeff_Array: for i in 0 to FILTER_TAPS-1 generate
    Coeff: for n in 0 to COEFF_WIDTH-1 generate
        Coeff_Sign: if n > COEFF_WIDTH-2 generate
            breg_s(i)(n) <= coeff_s(i)(COEFF_WIDTH-1);
        end generate;
        Coeff_Value: if n < COEFF_WIDTH-1 generate
            breg_s(i)(n) <= coeff_s(i)(n);
        end generate;
    end generate;
end generate;

data_o <= std_logic_vector(preg_s(0)(MAC_WIDTH-2 downto MAC_WIDTH-OUTPUT_WIDTH-1));         
      

process(clk)
begin

if rising_edge(clk) then 
        for i in 0 to FILTER_TAPS-1 loop
            for n in 0 to INPUT_WIDTH-1 loop
                if n > INPUT_WIDTH-2 then
                    areg_s(i)(n) <= data_i(INPUT_WIDTH-1); 
                else
                    areg_s(i)(n) <= data_i(n);              
                end if;
            end loop;
      
            if (i < FILTER_TAPS-1) then
                mreg_s(i) <= areg_s(i)*breg_s(i);         
                preg_s(i) <= mreg_s(i) + preg_s(i+1);
                        
            elsif (i = FILTER_TAPS-1) then
                mreg_s(i) <= areg_s(i)*breg_s(i); 
                preg_s(i)<= mreg_s(i);
            end if;
        end loop; 
    end if;
    
end process;

end Behavioral;
   