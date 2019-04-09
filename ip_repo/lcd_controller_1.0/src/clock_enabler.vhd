----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2019 05:33:14 PM
-- Design Name: 
-- Module Name: clock_enabler - Behavioral
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

entity clock_enabler is
    Port ( clock : in STD_LOGIC;
           clock_en : buffer STD_LOGIC := '0');
end clock_enabler;

architecture Behavioral of clock_enabler is

signal count : integer := 0;
constant N : integer := 250; -- Factor to divide by
begin

process(clock)
begin
if(rising_edge(clock)) then
    if(count < N) then
        count <= count + 1;
        clock_en <= '0';
    elsif(count = N) then
        clock_en <= '1';
        count <= 0;
    end if;
end if;
end process;

end Behavioral;
