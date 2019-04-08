library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lcd is
port ( clk 	: in std_logic;    				   
    enable  : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    command_mode : in std_logic;
	lcd_e 	: out std_logic;   				--enable control
	lcd_rs  : out std_logic;
	data  	: out std_logic_vector(3 downto 0);   	--data line
	busy    : out std_logic);
end lcd;

architecture Behavioral of lcd is

component clock_enabler is
    Port ( clock : in STD_LOGIC;
           clock_en : buffer STD_LOGIC := '0');
end component;

type state_type is (start, upper_bits, pause, lower_bits);
signal state : state_type;
signal clk_en : std_logic;
signal data_buffer : std_logic_vector (7 downto 0);

begin

inst_clock_enabler: clock_enabler
    Port map(
    clock => clk,
    clock_en => clk_en
    );

process(clk)
    begin
    if(rising_edge(clk) and clk_en = '1') then
        case state is 
            when start =>
                lcd_e <= '0';
                data <= x"0";
                busy <= '0';
                lcd_rs <= command_mode;
                data_buffer <= data_in;
                if(enable = '1') then
                    state <= upper_bits;
                end if;
                
            when upper_bits =>
                busy <= '1';
                data <= data_in(7 downto 4);
                lcd_e <= '1';
                state <= pause;
            
            when pause =>
                lcd_e <= '0';
                state <= lower_bits;
                
            when lower_bits =>
                data <= data_in(3 downto 0);
                lcd_e <= '1';
                state <= start;
        end case;
    end if;
end process;

end Behavioral;