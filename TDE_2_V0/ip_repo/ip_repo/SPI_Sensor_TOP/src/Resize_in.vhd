----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 12:10:36 PM
-- Design Name: 
-- Module Name: Resize_in - Behavioral
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

entity Resize_IN is
 Port (
        DATA_IN  : in  STD_LOGIC_VECTOR(17 DOWNTO 0);
        DATA_OUT : out std_logic_vector(31 DOWNTO 0) 
  );
end Resize_IN;

architecture Behavioral of Resize_IN is
begin
DATA_OUT <= "00000000000000" & DATA_IN;

end Behavioral;
