 library ieee;                    
 use  ieee.std_logic_1164.all;     
 use  ieee.std_logic_unsigned.all; 
 use ieee.std_logic_arith.all;
 use work.my_data_types.all;
  
 entity encode is
 port(
	tempC: in integer_number(4 downto 0);
	tempF: in integer_number(4 downto 0);
	
	mode: in integer range 0 to 2;
	
	linecode:out std_logic_vector(95 downto 0)
 );
 end encode;
 
 architecture behavior of encode is
 signal temp: integer_number(4 downto 0);
 type TwoDim_Array_Int is array(natural range <>) of integer;		--define 2D array
 

 constant digit5:TwoDim_Array_Int(0 to 2):=(12,15,10);
 type TwoDim_Array is array(natural range <>) of std_logic_vector(7 downto 0);		--define 2D array

 constant enDig:TwoDim_Array(0 to 6):=(		--enable each digit
 "01111111","10111111","11011111",
 "11101111","11110111","11111011",
 "11111111");

 constant segcode:TwoDim_Array(0 to 16):=(		--decoder fot each num, 16 is off
 "11111100","01100000","11011010","11110010",
 "01100110","10110110","10111110","11100000",
 "11111110","11110110","11101110","00111110",
 "10011100","01111010","10011110","10001110",
 "00000000");

 constant pointsegcode:TwoDim_Array(0 to 16):=(		--decoder fot each num, 16 is off,contain point
 "11111101","01100001","11011011","11110011",
 "01100111","10110111","10111111","11100001",
 "11111111","11110111","11101111","00111111",
 "10011101","01111011","10011111","10001111",
 "00000000");
 ---------------------End Table Declaration-----------------

 begin
	process
	variable temp2:integer_number(4 downto 0);
	begin
		wait for 1 sec;
		if (mode=0) then
			temp<=tempC;
		end if;
		if (mode=1) then
			temp<=tempF;
		end if;
		if (mode=2) then
			temp2(0):=tempC(1)+5;
			if (temp2(0)>=10) then
				temp2(0):=temp2(0)-10;
					temp2(1):=1;
			end if;
			temp2(1):=temp2(1)+tempC(2)+1;
			if (temp2(1)>=10) then
				temp2(1):=temp2(1)-10;
					temp2(2):=1;
			end if;
			temp2(2):=temp2(2)+tempC(3)+3;        
			if(temp(2)>=10) then
					temp2(2):=temp2(2)-10;
					temp2(3):=1;
			end if;
			temp2(3):=tempC(4)+temp2(3)+7;
			if(temp(3)>=10) then
					temp2(3):=temp2(3)-10;
					temp2(4):=1;        
			end if;
			temp2(4):=temp2(4)+2;                        
			temp<=temp2;
		end if;
		--digit0
		if (temp(4)=0) then
			linecode(7 downto 0)<=segcode(0);
		else
			linecode(7 downto 0)<=segcode(temp(4));
		end if;
		linecode(15 downto 8)<=enDig(0);
		--digit1
		if (mode=0) then
			linecode(23 downto 16)<=pointsegcode(temp(3));
		else
			linecode(23 downto 16)<=segcode(temp(3));
		end if;
		linecode(31 downto 24)<=enDig(1);
		--digit2
		if (mode=0) then
			linecode(39 downto 32)<=segcode(temp(2));
		else
			linecode(39 downto 32)<=pointsegcode(temp(2));
		end if;
		linecode(47 downto 40)<=enDig(2);
		
		--digit3
		linecode(55 downto 48)<=segcode(temp(1));
		linecode(63 downto 56)<=enDig(3);
		
		--digit4
		linecode(71 downto 64)<=segcode(temp(0));
		linecode(79 downto 72)<=enDig(4);
		
		--for digit5
		linecode(87 downto 80)<=segcode(digit5(mode));
		linecode(95 downto 88)<=enDig(5);
	end process;
 end behavior;