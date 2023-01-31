library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ADC_Sensor_axis_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		EN_LAST_Frame:in std_logic;
        SCK :out std_logic; 
        SDI :out std_logic; -- Slave Data input
        SDO :in std_logic; -- Slave data output
        CNV :out std_logic; -- 1M Clock Sample Rate
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end ADC_Sensor_axis_v1_0_M00_AXIS;

architecture implementation of ADC_Sensor_axis_v1_0_M00_AXIS is
COMPONENT SPI_Sensor_0
      PORT (
        CLK : IN STD_LOGIC;
        CLK_1M_0 : OUT STD_LOGIC;
        CNV : OUT STD_LOGIC;
        Ready : IN STD_LOGIC;
        SCK : OUT STD_LOGIC;
        SDI : OUT STD_LOGIC;
        SDO : IN STD_LOGIC;
        Valid : OUT STD_LOGIC;
        data : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
      );
end component;

signal ADC_32_out: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
signal ADC_out:std_logic_vector(17 downto 0);
signal M_AXIS_TVALID_s:std_logic;
signal ADC_enR: std_logic;
signal after_reset_count:std_logic_vector(7 downto 0);
signal CLK_1M:std_logic;
signal validd:std_logic;

begin

M_AXIS_TDATA <= ADC_32_out;
M_AXIS_TSTRB <= (others => '1');

process(M_AXIS_ACLK)
begin
if rising_edge(M_AXIS_ACLK) then 
    if M_AXIS_ARESETN = '0' then 
        ADC_32_out <= (others => '0');
    elsif(M_AXIS_TREADY = '1' and M_AXIS_TVALID_s = '1') then 
        ADC_32_out <= "00000000000000" & ADC_out;
    end if;
end if;
end process;
-- circuit to count number of clock after reset
process(M_AXIS_ACLK)
begin
if rising_edge(M_AXIS_ACLK) then 
    if M_AXIS_ARESETN = '0' then 
        ADC_enR <= '0';
        after_reset_count <= (others => '0');
    else
        after_reset_count <= after_reset_count + 1;
        if after_reset_count = C_M_START_COUNT then 
            ADC_enR <= '1';
        end if;
    end if;
end if;
end process;


--MAXIS_Valid_circuit
M_AXIS_TVALID <= M_AXIS_TVALID_s;
process(M_AXIS_ACLK)
begin
if rising_edge(M_AXIS_ACLK) then 
    if M_AXIS_ARESETN = '0' then
        M_AXIS_TVALID_s <='0';
    else
        M_AXIS_TVALID_s <= validd;
    end if;
end if; 
end process;

-- M_AXIS_TLAST Circuit
process(M_AXIS_ACLK)
begin
if rising_edge(M_AXIS_ACLK) then 
    if M_AXIS_ARESETN = '0' then
        M_AXIS_TLAST <='0';
    else
        M_AXIS_TLAST <= EN_LAST_Frame;
    end if;
end if; 
end process;

Spi_Sensor_DF : SPI_Sensor_0
  PORT MAP (
    CLK => M_AXIS_ACLK,
    CLK_1M_0 => CLK_1M,
    CNV => CNV,
    Ready => M_AXIS_TREADY,
    SCK => SCK,
    SDI => SDI,
    SDO => SDO,
    Valid => validd,
    data => ADC_out
  );
end implementation;
