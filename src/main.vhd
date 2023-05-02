LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY escrita_7seg_ex6 IS
PORT ( result : IN BIT_VECTOR( 4 downto 0 ) ; -- recebe um vetor de 5 bits
hex7, hex5, hex1, hex0 : OUT BIT_VECTOR( 6 downto 0 )
) ;
END escrita_7seg_ex6 ;
ARCHITECTURE LogicFunction OF escrita_7seg_ex6 IS
BEGIN
	processo_chave: PROCESS (result)
	VARIABLE zero, um, dois, tres, quatro, cinco, seis, sete, oito, nove : BIT_VECTOR( 6 downto 0);
	BEGIN
		-- Atribuição da saida para o display de 7 segmentos; 
		zero   := "1000000";
		um     := "1111001";
		dois   := "0100100";
		tres   := "0110000";
		quatro := "0011001";
		cinco  := "0010010";
		seis   := "0000011";
		sete   := "1111000";
		oito   := "0000000";
		nove   := "0011000";
		
		IF (result = "00000") THEN 	-- 0
		hex1 <= zero;
		hex0 <= zero;
		ELSIF (result = "00001") THEN -- 1
		hex1<= zero;
		hex0<= um;
		ELSIF (result = "00010") THEN -- 2
		hex1<= zero;
		hex0<= dois;
		ELSIF (result = "00011") THEN -- 3
		hex1<= zero;
		hex0<= tres;
		ELSIF (result = "00100") THEN -- 4
		hex1<= zero;
		hex0<= quatro;
		ELSIF (result = "00101") THEN -- 5
		hex1<= zero;
		hex0<= cinco;
		ELSIF (result = "00110") THEN -- 6
		hex1<= zero;
		hex0<= seis;
		ELSIF (result = "00111") THEN -- 7
		hex1<= zero;
		hex0<= sete;
		ELSIF (result = "01000") THEN -- 8
		hex1<= zero;
		hex0<= oito;
		ELSIF (result = "01001") THEN -- 9
		hex1<= zero;
		hex0<= nove;		
		ELSIF (result = "01010") THEN -- 10
		hex1<= um;
		hex0<= zero;	
		ELSIF (result = "01011") THEN -- 11
		hex1<= um;
		hex0<= um;
		ELSIF (result = "01100") THEN -- 12
		hex1<= um;
		hex0<= dois;
		ELSIF (result = "01101") THEN -- 13
		hex1<= um;
		hex0<= tres;
		ELSIF (result = "01110") THEN -- 14
		hex1<= um;
		hex0<= quatro;
		ELSIF (result = "01111") THEN -- 15
		hex1<= um;
		hex0<= cinco;
		ELSIF (result = "10000") THEN -- 16
		hex1<= um;
		hex0<= seis;
		ELSIF (result = "10001") THEN -- 17
		hex1<= um;
		hex0<= sete;
		ELSIF (result = "10010") THEN -- 18
		hex1<= um;
		hex0<= oito;
		ELSIF (result = "10011") THEN -- 19
		hex1<= um;
		hex0<= nove;
		ELSIF (result = "10100") THEN -- 20
		hex1<= dois;
		hex0<= zero;
		ELSIF (result = "10101") THEN -- 21
		hex1<= dois;
		hex0<= um;
		ELSIF (result = "10110") THEN -- 22
		hex1<= dois;
		hex0<= dois;
		ELSIF (result = "10111") THEN -- 23
		hex1<= dois;
		hex0<= tres;
		ELSIF (result = "11000") THEN -- 24
		hex1<= dois;
		hex0<= quatro;
		ELSIF (result = "11001") THEN -- 25
		hex1<= dois;
		hex0<= cinco;
		ELSIF (result = "11010") THEN -- 26
		hex1<= dois;
		hex0<= seis;
		ELSIF (result = "11011") THEN -- 27
		hex1<= dois;
		hex0<= sete;
		ELSIF (result = "11100") THEN -- 28
		hex1<= dois;
		hex0<= oito;
		ELSIF (result = "11101") THEN -- 29
		hex1<= dois;
		hex0<= nove;
		ELSIF (result = "11110") THEN -- 30
		hex1<= tres;
		hex0<= zero;
		ELSIF (result = "11111") THEN -- 31
		hex1<= tres;
		hex0<= um;
		END IF;
		-- OBS: Não temos nome/sobrenome compativel no display de 7 segmentos.
		hex7<="0001000"; -- A 
		hex5<="0110001"; -- C
	END PROCESS processo_chave;
		
END LogicFunction ;