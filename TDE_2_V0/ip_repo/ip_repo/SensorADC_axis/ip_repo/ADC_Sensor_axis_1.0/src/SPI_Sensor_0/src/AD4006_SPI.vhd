----------------------------------------------------------------------------------
-- Company: ADCOM
-- Engineer: Ron engelshtein
-- 
-- Create Date: 08/23/2022 02:23:14 PM
-- Design Name: 
-- Module Name: AD4006_Controller - Behavioral
-- Project Name:  TDE_2
-- Target Devices: 
-- Tool Versions: Vivado 2020.2
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity AD4006_Controller is
Port (
CLK: in std_logic;-- 100M

SCK :out std_logic; 
SDI :out std_logic; -- Slave Data input
SDO :in std_logic; -- Slave data output
CNV :out std_logic; -- 1M Clock Sample Rate
Ready:in std_logic;
Valid: out std_logic;
CLK_1M: out std_logic;
DataOut: out std_logic_vector(17 downto 0):= (others => '0')


);
end AD4006_Controller;

architecture Behavioral of AD4006_Controller is
signal CNV_temp:std_logic:='0';
signal Dshiftreg :std_logic_vector(17 downto 0):=(others => '0');

signal CNV_delay_0:std_logic;
signal CNV_delay_1:std_logic;
signal CNV_delay_2:std_logic;

signal CNV_delay_rise:std_logic;
signal clk_en_out:std_logic:= '0';
type state_type_Read is(wait_for_Ready,Wait_for_Conv_St,CNV_count_s,Write_Read_from_ADC_St);

signal state : state_type_Read:=Wait_for_Conv_St;
signal config:std_logic:='0';
signal count: std_logic_vector(10 downto 0):= (others => '0');
signal clk_out_count: integer range 0 to 18:= 0;
signal SDI_count:integer range 0 to 18:=0;
signal CNV_count: std_logic_vector(7 downto 0):= (others => '0');
signal SCK_count: integer range 0 to 1:=0;
signal SCK_CLK:std_logic:='0';
signal SCK_CLK_out:std_logic;
signal Validd:std_logic:='0';
signal SDI_Reg:std_logic_vector(15 downto 0):= (others => '1');
signal SDI_delay:std_logic:='1';
signal CNV_delay_count: integer range 0 to 19:= 0;
begin
valid <= validd;
SCK <=SCK_CLK and clk_en_out;
SDI <= '1';
SDI <= '1';
CLK_1M <= CNV_temp;
CNV_delay_rise <= CNV_delay_1 and (not CNV_delay_2);
SCK_CLK <= count(0);
process(CLK)
begin
if rising_edge(CLK) then 
count <= count + 1;
end if;
end process;
process(CLK)
begin
if rising_edge(CLK) then 
CNV_count <= CNV_count + 1;
if CNV_count = "110001" then
CNV_count <= (others => '0');
CNV_temp <= not CNV_temp;
end if;
end if;
end process;
Writeing_FSM:process(SCK_CLK)
begin
if rising_edge(SCK_CLK) then
CNV_delay_0 <= CNV_temp;
CNV_delay_1 <= CNV_delay_0;
CNV_delay_2 <= CNV_delay_1;
case state is  
  when wait_for_Ready =>
  if Ready = '1' then 
  state <= Wait_for_Conv_St; 
  end if;
  
  when Wait_for_Conv_St =>
    Validd <= '0';
   if CNV_delay_rise = '1' then 
   state <= CNV_count_s;
   end if;
  when CNV_count_s =>
    CNV_delay_count <= CNV_delay_count + 1;
    if (CNV_delay_count = 19) then
    state <=  Write_Read_from_ADC_St ;
     CNV_delay_count <= 0;
     CNV <= '0';
     else
     CNV <= '1';
     end if;
    
 when Write_Read_from_ADC_St => 
 if clk_out_count = 18 then 
 clk_out_count <= 0;
 clk_en_out <= '0';
 Validd <= '1';
 DataOut <= Dshiftreg;
config <= '1';
 state <= Wait_for_Conv_St;
 else
 clk_en_out <= '1'; 
 clk_out_count <= clk_out_count + 1;
 end if;
 when others =>
 state <= Wait_for_Conv_St;
 end case;

end if;
end process;

process(SCK_CLK)
begin
if falling_edge(SCK_CLK)then
Dshiftreg <= Dshiftreg(16 downto 0)& SDO;
end if;
end process;
end Behavioral;
