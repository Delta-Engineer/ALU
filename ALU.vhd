library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; 
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;
use work.all; 

Entity ALU is 
generic(		
			n : integer:=4;
			M : integer:=2
			);

	port(
			OP : in std_logic_vector(2 downto 0);
			A : in std_logic_vector(n-1 downto 0);
			B : in std_logic_vector(n-1 downto 0);
			Sum : buffer std_logic_vector(n-1 downto 0);
			IE : in std_logic; 
			reset : in std_logic; 
			Clk : in std_logic; 
			Z_Flag : out std_logic;
			O_Flag : buffer std_logic;
			N_Flag : out std_logic
			
--			WriteEN : in std_logic; 
--			WD : in std_logic_vector(n-1 downto 0); 
--			WAddr : in std_logic_vector(M-1 downto 0); 
--			RA : in std_logic_vector(M-1 downto 0); 
--			ReadA : in std_logic; 
--			RB : in std_logic_vector(M-1 downto 0); 
--			ReadB : in std_logic; 
--			QA : buffer std_logic_vector(n-1 downto 0); 
--			QB : buffer std_logic_vector(n-1 downto 0);
--			OE : in std_logic
			
	);
End entity; 

Architecture behavioural of ALU is 
--
--		type ram_type is array(0 to (2**(M)-1)) of std_logic_vector (n-1 downto 0);
--		signal ram: ram_type; 
--		signal sA : signed(n-1 downto 0); 
--		signal sB : signed(n-1 downto 0); 
	   
		
begin

	process(OP, A, B)
	variable sSum : signed(n-1 downto 0); 
	begin
	
--		sA <= signed(A);
--		sB <= signed(B); 
								if (OP = "000") then 
								sSum := signed(A)+signed(B);  
								Sum <= std_logic_vector(sSum); 
								
							else if (OP ="001") then
							sSum := signed(A)-signed(B);
							Sum <= std_logic_vector(sSum);
							
						else if (OP ="010") then
						Sum <= A AND B; 
					 
					else if (OP ="011") then
					Sum <= A OR B; 
				
				else if (OP ="100") then
				Sum <= A XOR B; 
			
			else if (OP ="101") then
			Sum <= NOT A; 
		
		else if (OP ="110") then
		Sum <= A; 
	 
	else if (OP ="111") then
	Sum <= (others => '0') ; 
	else
								end if; 
						end if; 
					end if; 	
				end if; 
			end if; 
		end if; 
	end if; 
end if; 	
	
end process;

	process(OP,A,B,Sum, O_Flag)
	begin 
	
	if (((OP="000") AND 
						((A(n-1)='1' AND B(n-1)='1' AND Sum(n-1)='0') OR
						(A(n-1)='0' AND B(n-1)='0' AND Sum(n-1) = '1'))) OR 
							
							((OP="001") AND 
								((A(n-1)='1' AND B(n-1)='0' AND Sum(n-1) = '0') OR
								(A(n-1)='0' AND B(n-1)='1' AND Sum(n-1)='1'))))
			  then 
		O_Flag <= '1'; 
		else 
		O_Flag <= '0';
	
			end if; 
			
			if(Sum(n-1)='1') then		
				N_Flag <= '1';
					else
						N_Flag <= '0'; 
							end if; 
							
							if(signed(Sum)=0 AND O_Flag='0') then 
								Z_Flag <= '1';
									else
										Z_Flag <= '0'; 
											end if; 
end process; 

--	process(Clk, IE, WriteEN, ReadA, ReadB, reset, A, B, WAddr)
--	begin 
--				if(IE = '0') then 
--					if rising_edge(Clk) then 	
--							if(WriteEN = '1') then 
--							ram(conv_integer(unsigned(WAddr))) <= Sum; 
--							
--								else if(ReadA = '1' AND ReadB = '1') then 
--								QA <= ram(conv_integer(unsigned(RA)));
--								QB <= ram(conv_integer(unsigned(RB)));
--								
--									else if(ReadA = '1' AND ReadB = '0') then 
--									QA <= ram(conv_integer(unsigned(RA)));
--									
--										else if(ReadA = '0' AND ReadB = '1') then 
--										QB <= ram(conv_integer(unsigned(RB)));
--										
--										end if; 
--									end if; 
--								end if; 
--							end if; 
--					end if; 
--					
--					if(reset = '1') then 
--							ram(conv_integer(unsigned(WAddr))) <= (others => '0'); 
--							
--					end if; 
--			end if; 
--				
--end process; 
 	
	
end behavioural; 
