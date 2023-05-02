--******************************************************************************
--                                                                             *
--                  Copyright (C) 2009 Altera Corporation                      *
--                                                                             *
-- ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    *
-- are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      *
--                                                                             *
-- All information provided herein is provided on an "as is" basis,            *
-- without warranty of any kind.                                               *
--                                                                             *
-- Module Name: adder_tb                        File Name: adder_tb.vhd        *
--                                                                             *
-- Module Function: This file contains the testbench for the Introduction      *
-- 					to VHDL lab 1a  								           *
--                                                                             *
-- REVISION HISTORY:                                                           *
--  Revision 1.0    12/05/2009 - Initial Revision  for QII 9.1                 *
--******************************************************************************

-- Insert library and use clauses
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_tb IS
END ENTITY adder_tb;

ARCHITECTURE stimulus OF adder_tb IS

	-- Component declaration for adder block
	COMPONENT adder
		PORT(
			rst, ck, switch: IN BIT; -- Portas de reset, clock e o interruptor(switch)
			ckCounterOut   : OUT INTEGER RANGE 50 DOWNTO 0; -- Saída para o  contador de pulsos(maximo 50)
			mainCounterOut : OUT INTEGER RANGE 15 DOWNTO 7  -- Saída para o  contador principal(maximo 15)
		);
	END COMPONENT;

	-- Signals to connect to DUT
	SIGNAL ckCounterOut    : INTEGER RANGE 50 DOWNTO 0;
	SIGNAL mainCounterOut  : INTEGER RANGE 15 DOWNTO 7;
	SIGNAL rst, ck, switch : BIT;

BEGIN  -- beginning of architecture body

	-- instantiate unit under test (adder)
	adder1 : adder PORT MAP 
		(ck => ck, rst => rst, ckCounterOut => ckCounterOut, mainCounterOut => mainCounterOut, switch => switch);

	rst <= '1', '0' AFTER 10 NS; -- Seta o Reset como false depois de 10 NS
	ck <= NOT ck AFTER 5 NS; -- seta a negação do clock a cada 5 NS
	switch <= NOT switch AFTER 100 NS; -- seta a negação do switch a cada 100 NS
		
END ARCHITECTURE stimulus;
