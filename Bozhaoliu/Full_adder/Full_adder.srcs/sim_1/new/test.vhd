----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2018 08:02:25 PM
-- Design Name: 
-- Module Name: test - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
    signal buff: std_logic_vector (2 downto 0):= "000";
    signal a, b, c: std_logic := '0';
    signal cout : STD_LOGIC;
    signal result : STD_LOGIC;
begin
    a <= buff(2);
    b <= buff(1);
    c <= buff(0);
    process
    begin
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
        wait for 10 ns;
        buff <= std_logic_vector( unsigned(buff) + 1);
    end process;
    
    proc: entity work.full_adder(Behavioral)
            port map(a => a, b => b, c => c, cout => cout, result => result); 


end Behavioral;
