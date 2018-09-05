----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2018 08:39:17 PM
-- Design Name: 
-- Module Name: Three_bit_adder - Behavioral
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

entity Three_bit_adder is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC_VECTOR (3 downto 0));
end Three_bit_adder;

architecture Behavioral of Three_bit_adder is
    component Full_adder
                port(  a : in STD_LOGIC;
                       b : in STD_LOGIC;
                       c : in STD_LOGIC;
                       cout : out STD_LOGIC;
                       result : out STD_LOGIC);
    end component;
    
    signal c: STD_LOGIC_VECTOR (2 downto 0);
begin
    
    add_0: Full_adder
            port map(a => a(0), b => b(0), c => '0', cout => c(0), result => result(0));
    add_1: Full_adder
            port map(a => a(1), b => b(1), c => c(0), cout => c(1), result => result(1));
    add_2: Full_adder
            port map(a => a(2), b => b(2), c => c(1), cout => c(2), result => result(2));
    result(3) <= c(2);
end Behavioral;
