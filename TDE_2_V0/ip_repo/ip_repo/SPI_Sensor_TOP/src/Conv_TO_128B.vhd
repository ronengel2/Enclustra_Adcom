----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 03:00:27 PM
-- Design Name: 
-- Module Name: Conv_TO_128B - Behavioral
-- Project Name: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Conv_TO_128B is
    Port ( IN_X : in STD_LOGIC_VECTOR (31 downto 0);
           IN_Y : in STD_LOGIC_VECTOR (31 downto 0);
           IN_Z : in STD_LOGIC_VECTOR (31 downto 0);
           IN_W : in STD_LOGIC_VECTOR (31 downto 0);
           VALID_X : in STD_LOGIC;
           VALID_Y : in STD_LOGIC;
           VALID_Z : in STD_LOGIC;
           VALID_W : in STD_LOGIC;
           
           OUTPUT_128 : out STD_LOGIC_VECTOR (127 downto 0);
           Valid: out std_logic);
end Conv_TO_128B;

architecture Behavioral of Conv_TO_128B is

begin
OUTPUT_128 <= IN_X &IN_Y &IN_Z &IN_W;
Valid <= VALID_X and VALID_Y and VALID_Z and VALID_W;
end Behavioral;
