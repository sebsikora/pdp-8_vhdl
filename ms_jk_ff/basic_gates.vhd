-- Inverter

library ieee;
use ieee.std_logic_1164.all;

entity NOT_gate is
	port( input:	in std_logic;
			output:	out std_logic
	);
end NOT_gate;

architecture rtl of NOT_gate is
begin
	output <= not (input);
end rtl;

-- 3 input NAND gate

library ieee;
use ieee.std_logic_1164.all;

entity NAND_3_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			inputC:	in std_logic;
			output:	out std_logic
	);
end NAND_3_gate;

architecture rtl of NAND_3_gate is
begin
	output <= not (inputA and inputB and inputC);
end rtl;


-- NAND gate

library ieee;
use ieee.std_logic_1164.all;

entity NAND_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end NAND_gate;

architecture rtl of NAND_gate is
begin
	output <= not (inputA and inputB);
end rtl;

-- AND gate

library ieee;
use ieee.std_logic_1164.all;

entity AND_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end AND_gate;

architecture rtl of AND_gate is
begin
	output <= (inputA and inputB);
end rtl;

-- AND 3 gate

library ieee;
use ieee.std_logic_1164.all;

entity AND_3_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			inputC:	in std_logic;
			output:	out std_logic
	);
end AND_3_gate;

architecture rtl of AND_3_gate is
begin
	output <= (inputA and inputB and inputC);
end rtl;

-- OR 5 gate

library ieee;
use ieee.std_logic_1164.all;

entity OR_5_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			inputC:	in std_logic;
			inputD:	in std_logic;
			inputE:	in std_logic;
			output:	out std_logic
	);
end OR_5_gate;

architecture rtl of OR_5_gate is
begin
	output <= (inputA or inputB or inputC or inputD or inputE);
end rtl;

-- OR 4 gate

library ieee;
use ieee.std_logic_1164.all;

entity OR_4_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			inputC:	in std_logic;
			inputD:	in std_logic;
			output:	out std_logic
	);
end OR_4_gate;

architecture rtl of OR_4_gate is
begin
	output <= (inputA or inputB or inputC or inputD);
end rtl;

-- OR 3 gate

library ieee;
use ieee.std_logic_1164.all;

entity OR_3_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			inputC:	in std_logic;
			output:	out std_logic
	);
end OR_3_gate;

architecture rtl of OR_3_gate is
begin
	output <= (inputA or inputB or inputC);
end rtl;

-- OR gate

library ieee;
use ieee.std_logic_1164.all;

entity OR_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end OR_gate;

architecture rtl of OR_gate is
begin
	output <= (inputA or inputB);
end rtl;

-- XOR gate
library ieee;
use ieee.std_logic_1164.all;

entity XOR_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end XOR_gate;

architecture rtl of XOR_gate is
component NAND_gate is
	port( inputA: 	in std_logic;
			inputB:	in std_logic;
			output:	out std_logic
	);
end component;
signal nand_0_output:		std_logic;
signal nand_1_output:		std_logic;
signal nand_2_output:		std_logic;
signal nand_3_output:		std_logic;
	
begin
	nand_0:			NAND_gate port map (inputA => inputA, inputB => inputB, output => nand_0_output);
	nand_1:			NAND_gate port map (inputA => inputA, inputB => nand_0_output, output => nand_1_output);
	nand_2:			NAND_gate port map (inputA => nand_0_output, inputB => inputB, output => nand_2_output);
	nand_3:			NAND_gate port map (inputA => nand_1_output, inputB => nand_2_output, output => nand_3_output);
	
	output <= nand_3_output;
end rtl;
