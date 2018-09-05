----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2018 08:41:45 PM
-- Design Name: 
-- Module Name: three_bit_adder - Behavioral
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

entity three_bit_adder is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC_VECTOR (3 downto 0));
end three_bit_adder;

architecture Behavioral of three_bit_adder is
component full_adder 
port ( a : in std_logic;
       b : in std_logic ;
       c : in std_logic ;
       cout : out std_logic;
       result : out std_logic );
        end component ;
        signal c: std_logic_vector ( 2 downto 0 );
begin
add_0 : full_adder 
    port map ( a=> a(0) , b => b(0) , c => '0', cout => c(0), result => result(0)) ;
 add_1 : full_adder  
    port map ( a=> a(1) , b => b(1) , c => c(0), cout => c(1), result => result(1)) ;
    add_2 : full_adder  
    port map ( a=> a(2) , b => b(2) , c => c(1), cout => c(2), result => result(2));
    result (3) <= c(2) ;
    
end Behavioral;
