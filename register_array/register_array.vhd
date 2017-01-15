library ieee;
use ieee.std_logic_1164.all;

entity top_level is
	port ( mem_data_bus_in:								in std_logic_vector(11 downto 0);
			 mem_data_bus_out:							out std_logic_vector(11 downto 0);
			 mem_addr_bus_in:								in std_logic;
			 not_reset:										in std_logic;
			 clk_in:											in std_logic;
			 START:											in std_logic;
			 STEP:											in std_logic
	);
end top_level;


architecture rtl of top_level is
component register_1_bit is
	port ( input:			in std_logic;
			 output:			out std_logic;
			 load:			in std_logic;
			 clk:				in std_logic;
			 not_reset:		in std_logic
	);
end component;
component register_12_bit_split is
	port ( input_hi:										in std_logic_vector(6 downto 0);
			 input_lo:										in std_logic_vector(4 downto 0);
			 output_hi:										out std_logic_vector(6 downto 0);
			 output_lo:										out std_logic_vector(4 downto 0);
			 load_hi:										in std_logic;
			 load_lo:										in std_logic;
			 clear_hi:										in std_logic;
			 clear_lo:										in std_logic;
			 clk:												in std_logic;
			 not_reset:										in std_logic
	);
end component;
component register_12_bit is
	port ( input:											in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 load:											in std_logic;
			 clear:											in std_logic;
			 clk:												in std_logic;
			 not_reset:										in std_logic
	);
end component;
component register_output_mux is
	port ( input_0:										in std_logic_vector(11 downto 0);
			 input_1:										in std_logic_vector(11 downto 0);
			 input_2:										in std_logic_vector(11 downto 0);
			 input_3:										in std_logic_vector(11 downto 0);
			 output:											out std_logic_vector(11 downto 0);
			 MA_BUS_SEL:									in std_logic;
			 MD_BUS_SEL:									in std_logic;
			 PC_BUS_SEL:									in std_logic;
			 SR_BUS_SEL:									in std_logic
	);
end component;
component address_comparator is
	port( input:											in std_logic_vector(11 downto 0);
			output:											out std_logic_vector(11 downto 0);
			IS_AUTO_INDEX:									out std_logic
	);
end component;

		signal top_bus:									std_logic_vector(11 downto 0);
		signal register_output_bus:					std_logic_vector(11 downto 0);
		signal MA_register_output:						std_logic_vector(11 downto 0);
		signal MD_register_output:						std_logic_vector(11 downto 0);
		signal PC_register_output:						std_logic_vector(11 downto 0);
		signal SR_register_output:						std_logic_vector(11 downto 0);
		signal AC_register_output:						std_logic_vector(11 downto 0);
		signal LINK_register_output:					std_logic;
		
		signal ALU_link_output:							std_logic;
		
		signal clk:											std_logic;

		begin
		
		MA_register:	register_12_bit_split port map ( input_hi => top_bus(11 downto 5),
  																	   input_lo => top_bus(4 downto 0),
																	   output_hi => MA_register_output(11 downto 5),
																	   output_lo => MA_register_output(4 downto 0),
																	   load_hi => MA_LOAD_HI,
																	   load_lo => MA_LOAD_LO,
																	   clear_hi => MA_CLR_HI,
																	   clear_lo => MA_CLR_LO,
																	   clk => clk,
																	   not_reset => not_reset
							);
		
		MD_register:	register_12_bit 		 port map ( input => top_bus,
																	   output => MD_register_output,
																	   load => MD_LOAD,
																	   clear => MD_CLR,
																	   clk => clk,
																	   not_reset => not_reset
							);
		
		PC_register:	register_12_bit_split port map ( input_hi => top_bus(11 downto 5),
  																	   input_lo => top_bus(4 downto 0),
																	   output_hi => PC_register_output(11 downto 5),
																	   output_lo => PC_register_output(4 downto 0),
																	   load_hi => PC_LOAD_HI,
																	   load_lo => PC_LOAD_LO,
																	   clear_hi => PC_CLR_HI,
																	   clear_lo => PC_CLR_LO,
																	   clk => clk,
																	   not_reset => not_reset
							);
		
		AC_register:	register_12_bit 		 port map ( input => top_bus,
																	   output => AC_register_output,
																	   load => AC_LOAD,
																	   clear => '0',
																	   clk => clk,
																	   not_reset => not_reset
							);
		
		LINK_register:	register_1_bit			 port map ( input => ALU_link_output,
																		output => LINK_register_output,
																		load => LINK_LOAD,
																		clk => clk,
																		not_reset => not_reset
							);
		

end rtl;