library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.all;

entity system is
	port ( FP_PC_OUTPUT:									out std_logic_vector(11 downto 0);
			 FP_DATA_OUTPUT:								out std_logic_vector(11 downto 0);
			 FP_SR_INPUT:									in std_logic_vector(11 downto 0);
			 FP_DATA_SELECT:								in std_logic_vector(2 downto 0);
			 clk_in:											in std_logic;
			 clk_out:										out std_logic;
			 not_reset:										in std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic;
			 FP_ADDR_LOAD:									in std_logic;
			 FP_EXAMINE:									in std_logic;
			 FP_DEPOSIT:									in std_logic;
			 HRQ:												in std_logic;
			 IRQ:												in std_logic;
			 HLT_indicator:								out std_logic;
			 RUN_indicator:								out std_logic
	);
end system;


architecture rtl of system is
component top_level is
	port ( mem_data_bus_in:								in std_logic_vector(11 downto 0);
			 mem_data_bus_out:							out std_logic_vector(11 downto 0);
			 mem_addr_bus_out:							out std_logic_vector(11 downto 0);
			 not_reset:										in std_logic;
			 clk_in:											in std_logic;
			 clk_out:										out std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic;
			 NEXT_STATE:									in std_logic;
			 END_STATE:										in std_logic;
			 MEM_READ:										out std_logic;
			 MEM_WRITE:										out std_logic;
			 ASSERT_CONTROL:								in std_logic;
			 FP_ADDR_LOAD:									in std_logic;
			 FP_EXAMINE:									in std_logic;
			 FP_DEPOSIT:									in std_logic;
			 FP_PC_OUTPUT:									out std_logic_vector(11 downto 0);
			 FP_DATA_OUTPUT:								out std_logic_vector(11 downto 0);
			 FP_DATA_SELECT:								in std_logic_vector(2 downto 0);
			 FP_SR_INPUT:									in std_logic_vector(11 downto 0);
			 HRQ:												in std_logic;
			 IRQ:												in std_logic;
			 IRQ_ON:											in std_logic;
			 HLT_indicator:								out std_logic;
			 RUN_indicator:								out std_logic
	);
end component;
component memory_4k IS
	port
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		--addressstall_a:	IN std_logic;
		clock		: IN STD_LOGIC  := '1';
		clken	: IN STD_LOGIC := '1';
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
end component;

signal address_bus:			std_logic_vector(11 downto 0);
signal data_cpu_to_mem_bus:			std_logic_vector(11 downto 0);
signal data_mem_to_cpu_bus:			std_logic_vector(11 downto 0);
signal MEM_WRITE:			std_logic;
signal MEM_READ:			std_logic;
signal clk:					std_logic;
signal clk_en:				std_logic;
signal mem_clk:			std_logic;
--signal hold_address:		std_logic;

begin
	clk_en <= MEM_READ or MEM_WRITE;
	mem_clk <= clk;
	clk_out <= clk;
	
	memory_bank_0:		memory_4k port map ( address => address_bus,
														--addressstall_a => hold_address,
														clock  => mem_clk,
														clken => clk_en,
														data => data_cpu_to_mem_bus,
														wren => MEM_WRITE,
														q => data_mem_to_cpu_bus
							);
	
	cpu:					top_level port map ( mem_data_bus_in => data_mem_to_cpu_bus,
													   mem_data_bus_out => data_cpu_to_mem_bus,
													   mem_addr_bus_out => address_bus,
													   not_reset => not_reset,
													   clk_in => clk_in,
														clk_out => clk,
													   START => START,
													   STEP => STEP,
													   NEXT_STATE => '0',
													   END_STATE => '0',
														MEM_READ => MEM_READ,
														MEM_WRITE => MEM_WRITE,
													   ASSERT_CONTROL => '0',
													   FP_ADDR_LOAD => FP_ADDR_LOAD,
													   FP_EXAMINE => FP_EXAMINE,
													   FP_DEPOSIT => FP_DEPOSIT,
													   FP_PC_OUTPUT => FP_PC_OUTPUT,
													   FP_DATA_OUTPUT => FP_DATA_OUTPUT,
													   FP_DATA_SELECT => FP_DATA_SELECT,
													   FP_SR_INPUT => FP_SR_INPUT,
													   HRQ => HRQ,
													   IRQ => '0',
													   IRQ_ON => '1',
													   HLT_indicator => HLT_indicator,
													   RUN_indicator => RUN_indicator
							);
end rtl;