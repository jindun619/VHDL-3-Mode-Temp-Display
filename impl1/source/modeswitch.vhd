 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
 use work.my_data_types.all;

 
 entity modtrans is
 port(
	clk:in std_logic;
	rst:in std_logic;
	
	modekey:in std_logic;
	
	mode:out integer range 0 to 2;
	
	tempC:in integer_number(4 downto 0);
	en:out std_logic
 );
 end entity;
 
 architecture behavior of modtrans is
 

 component CycleSampler is 
 port(
	clk: in std_logic;
	btnstate: in std_logic;
	keystate: out std_logic
	);
 end component CycleSampler;

 signal kmodstate: std_logic;
 signal kmodstate_ls: std_logic;
 signal tmpmpde: integer range 0 to 2;
 
 begin
	MK:CycleSampler PORT MAP (clk,modekey,kmodstate);
	
	process(clk)
	begin
		if (rising_edge(clk)) then
			kmodstate_ls<=kmodstate;
		end if;
	end process;
	
	process(clk,rst)
	begin
		if (rst='0') then
			tmpmpde<=0;
		elsif (rising_edge(clk)) then
			if (kmodstate_ls='1' and kmodstate='0') then
				if (tmpmpde=1) then
					tmpmpde<=2;
				end if;
				if (tmpmpde=2) then
					tmpmpde<=0;
				end if;
				if (tmpmpde=0) then
					tmpmpde<=1;
				end if;
			end if;
		end if;
	end process;
	mode<=tmpmpde;
	
	process(tempC)
	begin
		if (tempC(4)*10+tempC(3)>=25) then
			en<='1';
		else 
			en<='0';
		end if;
	end process;
 
 end behavior;