----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:44 05/05/2016 
-- Design Name: 
-- Module Name:    RC5Shifter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library rc5controller_v1_00_a;
use rc5controller_v1_00_a.reg;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RC5Shifter is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iIR : in  STD_LOGIC;
           oDATA : out  STD_LOGIC_VECTOR (3 downto 0);
           oIRQ : out  STD_LOGIC);
end RC5Shifter;

architecture Behavioral of RC5Shifter is

constant SHIFTER_BITS : natural := 27;
--constant CLOCK_LAPS	 : natural := 21333;
constant CLOCK_LAPS	 : natural := 88875;

component reg
	generic(
		WIDTH    : positive := 1;
		RST_INIT : integer := 0
	);
	port(
		i_clk  : in  std_logic;
		in_rst : in  std_logic;
		i_en	 : in  std_logic;
		i_d    : in  std_logic_vector(WIDTH-1 downto 0);
		o_q    : out std_logic_vector(WIDTH-1 downto 0)
	);
end component;

signal clk_reg_out 				: std_logic_vector(24 downto 0);
signal next_clk_reg_value 		: std_logic_vector(24 downto 0);
signal s_shifter_value 			: std_logic_vector(SHIFTER_BITS - 1 downto 0);
signal next_shifter_value 		: std_logic_vector(SHIFTER_BITS - 1 downto 0);
signal s_shift_cnt_value 		: std_logic_vector(4 downto 0);
signal next_shift_cnt_value 	: std_logic_vector(4 downto 0);
signal shift_active				: std_logic;
signal clk_count_lap				: std_logic;
signal s_control					: std_logic_vector(3 downto 0);

begin
	
	shift_active <= '1' when (not iIR) = '1' or s_shift_cnt_value > 0
	else '0';

	next_clk_reg_value <= clk_reg_out + 1 when clk_reg_out < CLOCK_LAPS
	else (others => '0');
	
	clockCnt : reg 
	generic map(
		WIDTH => 25,
		RST_INIT => 0)
	port map(
		--i_clk => iCLK and shift_active,
		i_clk => iCLK,
		in_rst => inRST,
		i_en => shift_active,
		i_d => next_clk_reg_value,
		o_q => clk_reg_out
	);
	
	clk_count_lap <= '1' when clk_reg_out = CLOCK_LAPS
	else '0';
	
	next_shift_cnt_value <= s_shift_cnt_value + 1 when s_shift_cnt_value < SHIFTER_BITS and shift_active = '1'--and clk_count_lap = '1'
	else (others => '0');
	
	shiftCnt : reg 
	generic map(
		WIDTH => 5,
		RST_INIT => 0)
	port map(
		i_clk => clk_count_lap,--iCLK,
		in_rst => inRST,
		i_en => '1',
		i_d => next_shift_cnt_value,
		o_q => s_shift_cnt_value
	);

	next_shifter_value(25 downto 1) <= s_shifter_value(24 downto 0) when clk_count_lap = '1' and shift_active = '1'
	else s_shifter_value(25 downto 1);
	
	next_shifter_value(0) <= not iIR when clk_count_lap = '1' and shift_active = '1'
	else s_shifter_value(0);

	shiftReg : reg 
	generic map(
		WIDTH => SHIFTER_BITS,
		RST_INIT => 0)
	port map(
		i_clk => iCLK,
		in_rst => inRST,
		i_en => '1',
		i_d => next_shifter_value,
		o_q => s_shifter_value
	);
		
	s_control(0) <= '1' when s_shifter_value(1 downto 0) = "01" else
						'0';
	s_control(1) <= '1' when s_shifter_value(3 downto 2) = "01" else
						'0';
	s_control(2) <= '1' when s_shifter_value(5 downto 4) = "01" else
						'0';
	s_control(3) <= '1' when s_shifter_value(7 downto 6) = "01" else
						'0';						

	oDATA(3 downto 0) <= s_control;
	--oDATA(7 downto 4) <= "0000";
	
	oIRQ <= '1' when s_shift_cnt_value = SHIFTER_BITS
	else '0';
	
	--oDATA <= s_shifter_value(7 downto 0);	
	--oDATA(20 downto 0) <= s_shifter_value(20 downto 0);
	--oDATA(25 downto 21) <= s_shift_cnt_value;
	--oDATA(25) <= clk_count_lap;
	--oDATA(27 downto 1) <= s_shifter_value(27 downto 1);
	
	--oDATA(0) <= not iIR;
	

end Behavioral;

