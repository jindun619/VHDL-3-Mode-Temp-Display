library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.my_data_types.all;

entity toF is
port(
    doutput: in integer_number(4 downto 0);
	clk: in std_logic;
	DataF: out integer_number(4 downto 0)
	);
end entity;

architecture behavior of toF is

-----signal declaration
signal DataLastBit:integer;
signal Fahrenheit:integer:=0;
signal da,db,dc,dd,de,df,dg,dh:std_logic_vector(3 downto 0);

signal dh3,dh2,dh1,dh0: std_logic;
signal dh31,dh21,dh11,dh01: integer;
signal dg3,dg2,dg1,dg0: std_logic;
signal dg31,dg21,dg11,dg01: integer;

signal df3,df2,df1,df0: std_logic;
signal df31,df21,df11,df01: integer;
signal de3,de2,de1,de0: std_logic;
signal de31,de21,de11,de01: integer;

signal dd3,dd2,dd1,dd0: std_logic;
signal dd31,dd21,dd11,dd01: integer;
signal dc3,dc2,dc1,dc0: std_logic;
signal dc31,dc21,dc11,dc01: integer;

signal db3,db2,db1,db0: std_logic;
signal db31,db21,db11,db01: integer;
signal da3,da2,da1,da0: std_logic;
signal da31,da21,da11,da01: integer;

-----end signal declaration

begin
    Fahrenheit<=doutput(4)*1800000+doutput(3)*180000+doutput(2)*18000+doutput(1)*1800+doutput(0)*180+DataLastBit*18+3200000;
	
process(clk)
variable tmp: integer range 0 to 99999999:=0;
begin
    if(clk'event and clk='1') then
	    if(tmp<Fahrenheit) then
		    if(da=9 and db=9 and dc=9 and dd=9 and de=9 and df=9 and dg=9 and dh=9 ) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<="0000";
				
				de<="0000";
				df<="0000";
				dg<="0000";
				dh<="0000";
				
				tmp:=0;
			elsif(da=9 and db=9 and dc=9 and dd=9 and de=9 and df=9 and dg=9) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<="0000";
				
				de<="0000";
				df<="0000";
				dg<="0000";
				dh<=dh+1; 
				
				tmp:=tmp+1;
				
			elsif(da=9 and db=9 and dc=9 and dd=9 and de=9 and df=9) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<="0000";
				
				de<="0000";
				df<="0000";
				dg<=dg+1;
			    
				tmp:=tmp+1;
				
			elsif(da=9 and db=9 and dc=9 and dd=9 and de=9) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<="0000";
				de<="0000";
			    df<=df+1;
				tmp:=tmp+1;
				
			elsif(da=9 and db=9 and dc=9 and dd=9) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<="0000";
				de<=de+1;
				tmp:=tmp+1;
			
			elsif(da=9 and db=9 and dc=9) then
			    da<="0000";
				db<="0000";
				dc<="0000";
				dd<=dd+1;
				tmp:=tmp+1;
				
			elsif(da=9 and db=9 ) then
			    da<="0000";
				db<="0000";
				dc<= dc+1;
				
				tmp:=tmp+1;
			elsif(da=9) then
			    da<="0000";
				db<= db+1;
				
				tmp:=tmp+1;
			else
			    da<=da+1;
				tmp:=tmp+1;
			end if;
		else
		    tmp:=0;
			 dh3<=dh(3);
			 dh31<=conv_integer(dh3);
			 dh2<=dh(2);
			 dh21<=conv_integer(dh2);
			 dh1<=dh(1);
			 dh11<=conv_integer(dh1);
			 dh0<=dh(0);
			 dh01<=conv_integer(dh0);
		     DataF(4)<=(dh31*8+dh21*4+dh11*2+dh01);
			 
			 dg3<=dg(3);
			 dg31<=conv_integer(dg3);
			 dg2<=dg(2);
			 dg21<=conv_integer(dg2);
			 dg1<=dg(1);
			 dg11<=conv_integer(dg1);
			 dg0<=dg(0);
			 dg01<=conv_integer(dg0);
		     DataF(3)<=(dg31*8+dg21*4+dg11*2+dg01);
			
			 df3<=df(3);
			 df31<=conv_integer(df3);
			 df2<=df(2);
			 df21<=conv_integer(df2);
			 df1<=df(1);
			 df11<=conv_integer(df1);
			 df0<=df(0);
			 df01<=conv_integer(df0);
		     DataF(2)<=(df31*8+df21*4+df11*2+df01);
			 
			 de3<=de(3);
			 de31<=conv_integer(de3);
			 de2<=de(2);
			 de21<=conv_integer(de2);
			 de1<=de(1);
			 de11<=conv_integer(de1);
			 de0<=de(0);
			 de01<=conv_integer(de0);
		     DataF(1)<=(de31*8+de21*4+de11*2+de01);
			 
			 dd3<=dd(3);
			 dd31<=conv_integer(dd3);
			 dd2<=dd(2);
			 dd21<=conv_integer(dd2);
			 dd1<=dd(1);
			 dd11<=conv_integer(dd1);
			 dd0<=dd(0);
			 dd01<=conv_integer(dd0);
		     DataF(0)<=(dd31*8+dd21*4+dd11*2+dd01);
			 
			 da<="0000";
		     db<="0000";
			 dc<="0000";
		     dd<="0000";
			 de<="0000";
		     df<="0000";
			 dg<="0000";
		     dh<="0000";
			 
		     end if;
	    end if;
end process;

end behavior;

			
			
	    
		
	    


