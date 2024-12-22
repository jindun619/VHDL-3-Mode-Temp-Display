library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.my_data_types.all;


entity toC is
port(
    Data: in std_logic_vector(15 downto 0);
	clk: in std_logic;
	--DataLastBit:out integer;
	DataOut: out integer_number(4 downto 0)
	--DataOut_integer: out integer;
	--DataOut_decimal: out integer;
	);
end entity;

architecture behavior of toC is


------signal declaration
--signal tmp: integer :=0;
signal DataOut_integer: integer:=0;
signal DataOut_decimal: integer:=0;

signal Data01: integer:=0;
signal Data11: integer:=0;
signal Data21: integer:=0;
signal Data31: integer:=0;
signal Data41: integer:=0;
signal Data51: integer:=0;
signal Data61: integer:=0;
signal Data71: integer:=0;
signal Data81: integer:=0;
signal Data91: integer:=0;
signal Data101: integer;

signal Data0: std_logic;
signal Data1: std_logic;
signal Data2: std_logic;
signal Data3: std_logic;
signal Data4: std_logic;
signal Data5: std_logic;
signal Data6: std_logic;
signal Data7: std_logic;
signal Data8: std_logic;
signal Data9: std_logic;
signal Data10: std_logic;

signal da,db:std_logic_vector(3 downto 0);
signal db3,db2,db1,db0: std_logic;
signal db31,db21,db11,db01: integer;
signal da3,da2,da1,da0: std_logic;
signal da31,da21,da11,da01: integer;


signal d1,d2,d3,d4:std_logic_vector(3 downto 0);
signal d13,d12,d11,d10: std_logic;
signal d131,d121,d111,d101: integer;
signal d23,d22,d21,d20: std_logic;
signal d231,d221,d211,d201: integer;
signal d33,d32,d31,d30: std_logic;
signal d331,d321,d311,d301: integer;
signal d43,d42,d41,d40: std_logic;
signal d431,d421,d411,d401: integer;




----end signal declaration

----get real integer part of data;
----get decimal part of data multiplied by 10000
----so we get DataOut_integer range from 0 to 127;
----and DataOut_decinal range from 0 to 9325;
begin
process(clk)
begin
   if(clk'event and clk='1') then
   
      Data0<=Data(0);
	  Data01<=conv_integer(Data0);
	  Data1<=Data(1);
	  Data11<=conv_integer(Data1);
	  Data2<=Data(2);
	  Data21<=conv_integer(Data2);
	  Data3<=Data(3);
	  Data31<=conv_integer(Data3);
	  Data4<=Data(4);
	  Data41<=conv_integer(Data4);
	  Data5<=Data(5);
	  Data51<=conv_integer(Data5);
	  Data6<=Data(6);
	  Data61<=conv_integer(Data6);
	  Data7<=Data(7);
	  Data71<=conv_integer(Data7);
	  Data8<=Data(8);
	  Data81<=conv_integer(Data8);
	  Data9<=Data(9);
	  Data91<=conv_integer(Data9);
	  Data10<=Data(10);
	  Data101<=conv_integer(Data10);

      DataOut_integer<=(Data101*64+Data91*32+Data81*16+Data71*8+Data61*4+Data51*2+Data41);
	  DataOut_decimal<=(Data31*5000+Data21*2500+Data11*1250+Data01*625);
    end if;
end process;

----convert DataOut_integer to DataOut(4)&DataOut(3) in std_logic_vector form
process(clk)
variable tmp: integer range 0 to 99:=0;
begin
    if(clk'event and clk='1') then
	    if(tmp<DataOut_integer) then
		    if(da=9 and db=9) then
			    da<="0000"; 
				db<="0000";
				tmp:=0;
			elsif(da=9) then
				    da<="0000";
					db<=db+1;
					tmp:=tmp+1;
			else da<=da+1;
			     tmp:=tmp+1;
			end if;
		else 
		     db3<=db(3);
			 db31<=conv_integer(db3);
			 db2<=db(2);
			 db21<=conv_integer(db2);
			 db1<=db(1);
			 db11<=conv_integer(db1);
			 db0<=db(0);
			 db01<=conv_integer(db0);
		     DataOut(4)<=(db31*8+db21*4+db11*2+db01);
			 
			 da3<=da(3);
			 da31<=conv_integer(da3);
			 da2<=da(2);
			 da21<=conv_integer(da2);
			 da1<=da(1);
			 da11<=conv_integer(da1);
			 da0<=da(0);
			 da01<=conv_integer(da0);
		     DataOut(3)<=(da31*8+da21*4+da11*2+da01);

		     da<="0000";
		     db<="0000";
			 tmp:=0;
		end if;
	end if;
end process;




---connvert DataOut_decimal to DataOut(2),DataOut(1)&DataOut(0) in std_logic_vector form
process(clk)
variable tmp1: integer range 0 to 9999:=0;
begin
    if(clk'event and clk='1') then
	    if(tmp1<DataOut_decimal) then
		    if(d1=9 and d2=9 and d3=9 and d4=9) then
			    d1<="0000";
				d2<="0000";
				d3<="0000";
				d4<="0000";
				tmp1:=0;
			elsif(d1=9 and d2=9 and d3=9) then
			    d1<="0000";
				d2<="0000";
				d3<="0000";
				d4<=d4+1;
				tmp1:=tmp1+1;
			elsif(d1=9 and d2=9) then
			    d1<="0000";
				d2<="0000";
				d3<=d3+1;
				tmp1:=tmp1+1;
			elsif(d1=9) then
			    d1<="0000";
			    d2<=d2+1;
				tmp1:=tmp1+1;
			else
			    d1<=d1+1;
				tmp1:=tmp1+1;
			end if;
		else
		    tmp1:=0;
			 d43<=d4(3);
			 d431<=conv_integer(d43);
			 d42<=d4(2);
			 d421<=conv_integer(d42);
			 d41<=d4(1);
			 d411<=conv_integer(d41);
			 d40<=d4(0);
			 d401<=conv_integer(d40);
		     DataOut(2)<=(d431*8+d421*4+d411*2+d401);
			 
			 d33<=d3(3);
			 d331<=conv_integer(d33);
			 d32<=d3(2);
			 d321<=conv_integer(d32);
			 d31<=d3(1);
			 d311<=conv_integer(d31);
			 d30<=d3(0);
			 d301<=conv_integer(d30);
		     DataOut(1)<=(d331*8+d321*4+d311*2+d301);
			 
			 d23<=d2(3);
			 d231<=conv_integer(d23);
			 d22<=d2(2);
			 d221<=conv_integer(d22);
			 d21<=d2(1);
			 d211<=conv_integer(d21);
			 d20<=d2(0);
			 d201<=conv_integer(d20);
		     DataOut(0)<=(d231*8+d221*4+d211*2+d201);
			
			--DataOut(2)<=d4;
			--DataOut(1)<=d3;
			--DataOut(0)<=d2;
			
			 d13<=d1(3);
			 d131<=conv_integer(d13);
			 d12<=d1(2);
			 d121<=conv_integer(d12);
			 d11<=d1(1);
			 d111<=conv_integer(d11);
			 d10<=d1(0);
			 d101<=conv_integer(d10);			
			
			d1<="0000";
			d2<="0000";
			d3<="0000";
			d4<="0000";
		end if;
	end if;
end process;
	  
end behavior;
