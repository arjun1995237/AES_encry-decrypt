library ieee;use ieee.std_logic_1164.all;
entity reg128 is
port (d:in std_logic_vector(0 to 127);
		clk: in std_logic;
		q:out std_logic_vector(0 to 127));
		end entity ;
architecture arch_reg of reg128 is
begin
process(clk)
begin
if clk'event and clk='1' then 
q<=d;
end if;
end process;
end arch_reg;
-------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
package pkg_subbytes is
function subbytes(X:std_logic_vector) return std_logic_vector;
end pkg_subbytes;
package body pkg_subbytes is 
function subbytes(X:std_logic_vector) return std_logic_vector is
variable temp,outp:std_logic_vector (0 to 7);
begin
temp:=X;
case  temp is
when X"00" => outp:= X"63";
when X"01" => outp:= X"7c";
when X"02" => outp:= X"77";
when X"03" => outp:= X"7b";
when X"04" => outp:= X"f2";
when X"05" => outp:= X"6b";
when X"06" => outp:= X"6f";
when X"07" => outp:= X"c5";
when X"08" => outp:= X"30";
when X"09" => outp:= X"01";
when X"0a" => outp:= X"67";
when X"0b" => outp:= X"2b";
when X"0c" => outp:= X"fe";
when X"0d" => outp:= X"d7";
when X"0e" => outp:= X"ab";
when X"0f" => outp:= X"76";
when X"10" => outp:= X"ca";
when X"11" => outp:= X"82";
when X"12" => outp:= X"c9";
when X"13" => outp:= X"7d";
when X"14" => outp:= X"fa";
when X"15" => outp:= X"59";
when X"16" => outp:= X"47";
when X"17" => outp:= X"f0";
when X"18" => outp:= X"ad";
when X"19" => outp:= X"d4";
when X"1a" => outp:= X"a2";
when X"1b" => outp:=X"af";
when X"1c" => outp:= X"9c";
when X"1d" => outp:= X"a4";
when X"1e" => outp:= X"72";
when X"1f" => outp:= X"c0";
when X"20" => outp:= X"b7";
when X"21" => outp:= X"fd";
when X"22" => outp:= X"93";
when X"23" => outp:= X"26";
when X"24" => outp:= X"36";
when X"25" => outp:= X"3f";
when X"26" => outp:= X"f7";
when X"27" => outp:= X"cc";
when X"28" => outp:= X"34";
when X"29" => outp:= X"a5";
when X"2a" => outp:= X"e5";
when X"2b" => outp:= X"f1";
when X"2c" => outp:= X"71";
when X"2d" => outp:= X"d8";
when X"2e" => outp:= X"31";
when X"2f" => outp:= X"15";
when X"30" => outp:= X"04";
when X"31" => outp:= X"c7";
when X"32" => outp:= X"23";
when X"33" => outp:= X"c3";
when X"34" => outp:= X"18";
when X"35" => outp:= X"96";
when X"36" => outp:= X"05";
when X"37" => outp:= X"9a";
when X"38" => outp:= X"07";
when X"39" => outp:= X"12";
when X"3a" => outp:= X"80";
when X"3b" => outp:= X"e2";
when X"3c" => outp:= X"eb";
when X"3d" => outp:= X"27";
when X"3e" => outp:= X"b2";
when X"3f" => outp:= X"75";
when X"40" => outp:= X"09";
when X"41" => outp:= X"83";
when X"42" => outp:= X"2c";
when X"43" => outp:= X"1a";
when X"44" => outp:= X"1b";
when X"45" => outp:= X"6e";
when X"46" => outp:= X"5a";
when X"47" => outp:= X"a0";
when X"48" => outp:= X"52";
when X"49" => outp:= X"3b";
when X"4a" => outp:= X"d6";
when X"4b" => outp:= X"b3";
when X"4c" => outp:= X"29";
when X"4d" => outp:= X"e3";
when X"4e" => outp:= X"2f";
when X"4f" => outp:= X"84";
when X"50" => outp:= X"53";
when X"51" => outp:= X"d1";
when X"52" => outp:= X"00";
when X"53" => outp:= X"ed";
when X"54" => outp:= X"20";
when X"55" => outp:= X"fc";
when X"56" => outp:= X"b1";
when X"57" => outp:= X"5b";
when X"58" => outp:= X"6a";
when X"59" => outp:= X"cb";
when X"5a" => outp:= X"be";
when X"5b" => outp:= X"39";
when X"5c" => outp:= X"4a";
when X"5d" => outp:= X"4c";
when X"5e" => outp:= X"58";
when X"5f" => outp:= X"cf";
when X"60" => outp:= X"d0";
when X"61" => outp:= X"ef";
when X"62" => outp:= X"aa";
when X"63" => outp:= X"fb";
when X"64" => outp:= X"43";
when X"65" => outp:= X"4d";
when X"66" => outp:= X"33";
when X"67" => outp:= X"85";
when X"68" => outp:= X"45";
when X"69" => outp:= X"f9";
when X"6a" => outp:= X"02";
when X"6b" => outp:= X"7f";
when X"6c" => outp:= X"50";
when X"6d" => outp:= X"3c";
when X"6e" => outp:= X"9f";
when X"6f" => outp:= X"a8";
when X"70" => outp:= X"51";
when X"71" => outp:= X"a3";
when X"72" => outp:= X"40";
when X"73" => outp:= X"8f";
when X"74" => outp:= X"92";
when X"75" => outp:= X"9d";
when X"76" => outp:= X"38";
when X"77" => outp:= X"f5";
when X"78" => outp:= X"bc";
when X"79" => outp:= X"b6";
when X"7a" => outp:= X"da";
when X"7b" => outp:= X"21";
when X"7c" => outp:= X"10";
when X"7d" => outp:= X"ff";
when X"7e" => outp:= X"f3";
when X"7f" => outp:= X"d2";
when X"80" => outp:= X"cd";
when X"81" => outp:= X"0c";
when X"82" => outp:= X"13";
when X"83" => outp:= X"ec";
when X"84" => outp:= X"5f";
when X"85" => outp:= X"97";
when X"86" => outp:= X"44";
when X"87" => outp:= X"17";
when X"88" => outp:= X"c4";
when X"89" => outp:= X"a7";
when X"8a" => outp:= X"7e";
when X"8b" => outp:= X"3d";
when X"8c" => outp:= X"64";
when X"8d" => outp:= X"5d";
when X"8e" => outp:= X"19";
when X"8f" => outp:= X"73";
when X"90" => outp:= X"60";
when X"91" => outp:= X"81";
when X"92" => outp:= X"4f";
when X"93" => outp:= X"dc";
when X"94" => outp:= X"22";
when X"95" => outp:= X"2a";
when X"96" => outp:= X"90";
when X"97" => outp:= X"88";
when X"98" => outp:= X"46";
when X"99" => outp:= X"ee";
when X"9a" => outp:= X"b8";
when X"9b" => outp:= X"14";
when X"9c" => outp:= X"de";
when X"9d" => outp:= X"5e";
when X"9e" => outp:= X"0b";
when X"9f" => outp:= X"db";
when X"a0" => outp:= X"e0";
when X"a1" => outp:= X"32";
when X"a2" => outp:= X"3a";
when X"a3" => outp:= X"0a";
when X"a4" => outp:= X"49";
when X"a5" => outp:= X"06";
when X"a6" => outp:= X"24";
when X"a7" => outp:= X"5c";
when X"a8" => outp:= X"c2";
when X"a9" => outp:= X"d3";
when X"aa" => outp:= X"ac";
when X"ab" => outp:= X"62";
when X"ac" => outp:= X"91";
when X"ad" => outp:= X"95";
when X"ae" => outp:= X"e4";
when X"af" => outp:= X"79";
when X"b0" => outp:= X"e7";
when X"b1" => outp:= X"c8";
when X"b2" => outp:= X"37";
when X"b3" => outp:= X"6d";
when X"b4" => outp:= X"8d";
when X"b5" => outp:= X"d5";
when X"b6" => outp:= X"4e";
when X"b7" => outp:= X"a9";
when X"b8" => outp:= X"6c";
when X"b9" => outp:= X"56";
when X"ba" => outp:= X"f4";
when X"bb" => outp:= X"ea";
when X"bc" => outp:= X"65";
when X"bd" => outp:= X"7a";
when X"be" => outp:= X"ae";
when X"bf" => outp:= X"08";
when X"c0" => outp:= X"ba";
when X"c1" => outp:= X"78";
when X"c2" => outp:= X"25";
when X"c3" => outp:= X"2e";
when X"c4" => outp:= X"1c";
when X"c5" => outp:= X"a6";
when X"c6" => outp:= X"b4";
when X"c7" => outp:= X"c6";
when X"c8" => outp:= X"e8";
when X"c9" => outp:= X"dd";
when X"ca" => outp:= X"74";
when X"cb" => outp:= X"1f";
when X"cc" => outp:= X"4b";
when X"cd" => outp:= X"bd";
when X"ce" => outp:= X"8b";
when X"cf" => outp:= X"8a";
when X"d0" => outp:= X"70";
when X"d1" => outp:= X"3e";
when X"d2" => outp:= X"b5";
when X"d3" => outp:= X"66";
when X"d4" => outp:= X"48";
when X"d5" => outp:= X"03";
when X"d6" => outp:= X"f6";
when X"d7" => outp:= X"0e";
when X"d8" => outp:= X"61";
when X"d9" => outp:= X"35";
when X"da" => outp:= X"57";
when X"db" => outp:= X"b9";
when X"dc" => outp:= X"86";
when X"dd" => outp:= X"c1";
when X"de" => outp:= X"1d";
when X"df" => outp:= X"9e";
when X"e0" => outp:= X"e1";
when X"e1" => outp:= X"f8";
when X"e2" => outp:= X"98";
when X"e3" => outp:= X"11";
when X"e4" => outp:= X"69";
when X"e5" => outp:= X"d9";
when X"e6" => outp:= X"8e";
when X"e7" => outp:= X"94";
when X"e8" => outp:= X"9b";
when X"e9" => outp:= X"1e";
when X"ea" => outp:= X"87";
when X"eb" => outp:= X"e9";
when X"ec" => outp:= X"ce";
when X"ed" => outp:= X"55";
when X"ee" => outp:= X"28";
when X"ef" => outp:= X"df";
when X"f0" => outp:= X"8c";
when X"f1" => outp:= X"a1";
when X"f2" => outp:= X"89";
when X"f3" => outp:= X"0d";
when X"f4" => outp:= X"bf";
when X"f5" => outp:= X"e6";
when X"f6" => outp:= X"42";
when X"f7" => outp:= X"68";
when X"f8" => outp:= X"41";
when X"f9" => outp:= X"99";
when X"fa" => outp:= X"2d";
when X"fb" => outp:= X"0f";
when X"fc" => outp:= X"b0";
when X"fd" => outp:= X"54";
when X"fe" => outp:= X"bb";
when X"ff" => outp:= X"16";
when others => outp:=X"00";
end case;
return outp;
end function;
end pkg_subbytes;
----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.pkg_subbytes.all;

package pkg_func is
function func1(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector;
end pkg_func;
package body pkg_func is
function func1(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector is
variable after_swap,after_subbytes,output:std_logic_vector(0 to 31):=X"00000000";
variable temp2:std_logic_vector(3 downto 0);
begin
temp2:=Y;
 after_swap(0 to 7):= X(8 to 15);
 after_swap(8 to 15):=X(16 to 23);
 after_swap(16 to 23):=X(24 to 31);
 after_swap(24 to 31):=X(0 to 7);
 ----------------------------------
 L_func:for i in 0 to 3 loop
	after_subbytes(i*8 to i*8+7):=subbytes(after_swap(i*8 to i*8+7));
end loop;
output(8 to 31):=after_subbytes(8 to 31);
 case temp2 is
 when "0001"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00000001" ;
  when "0010"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00000010" ;
  when "0011"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00000100" ;
  when "0100"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00001000" ;
  when "0101"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00010000" ;
  when "0110"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00100000" ;
  when "0111"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "01000000" ;
  when "1000"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "10000000" ;
  when "1001"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00011011" ;
  when "1010"=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00110110" ;
  when others=>
 output( 0 to 7):= after_subbytes( 0 to 7) xor "00000000" ;
 end case;
return output;
end function;
end pkg_func;
---------------------------------------------------------------------
library ieee;
use work.pkg_func.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity keygenerator is
port(key:in std_logic_vector(0 to 127);subkey0,subkey1,subkey2,subkey3,subkey4,subkey5,subkey6,subkey7,subkey8,subkey9,subkey10:out std_logic_vector(0 to 127));
end keygenerator;
architecture arch_keygenerator of keygenerator is
type word is array (0 to 43) of std_logic_vector(0 to 31);
type sub is array (0 to 10)of std_logic_vector (0 to 127);

signal subkey:sub:=(others=>(others=>'0'));
begin

subkey0<=subkey(0);
subkey1<=subkey(1);
subkey2<=subkey(2);
subkey3<=subkey(3);
subkey4<=subkey(4);
subkey5<=subkey(5);
subkey6<=subkey(6);
subkey7<=subkey(7);
subkey8<=subkey(8);
subkey9<=subkey(9);
subkey10<=subkey(10);

process(key)
variable W:word:=(others=>(others=>'0'));
begin
W(0):=key(0 to 31);
W(1):=key(32 to 63);
W(2):=key(64 to 95);
W(3):=key(96 to 127);
subkey(0)<=W(0)&W(1)&W(2)&W(3);
F1:for round in 1 to 10 loop 
F2:for j in round*4 to (round*4+3) loop
if j rem 4=0 then
W(j):=W(j-4) xor func1( W(j-1),std_logic_vector(to_unsigned(round,4)));
else
W(j):=W(j-4) xor W(j-1);
end if;
end loop;
subkey(round)<=W(4*round)&W(4*round+1)&W(4*round+2)&W(4*round+3);
end loop;
end process;
end arch_keygenerator;


----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package pkg_mixer_function is
function GF_mul(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector;
end pkg_mixer_function;
package body pkg_mixer_function is


function GF_mul(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector is
variable temp:std_logic_vector(7 downto 0):=X"00";
begin
if Y=X"01" then 
temp:=X;
elsif Y=X"02" then
temp:=X(6)&X(5)&X(4)&(X(3) xor X(7))&(X(2) xor X(7))&X(1)&(X(0) xor X(7))&X(7);
elsif Y=X"03" then
temp:=(X(7) xor X(6))&(X(5) xor X(6))&(X(5)xor X(4))&(X(4) xor X(3) xor X(7))&(X(2) xor X(3) xor X(7))&(X(2) xor X(1))&(X(0) xor X(1) xor X(7))&(X(7) xor X(0));
else
temp:="00000000";
end if;
 
return temp;
end function;
end pkg_mixer_function;


library ieee;
use ieee.std_logic_1164.all;
use work.pkg_mixer_function.all;
entity mixcol  is

port(inp0,inp1,inp2,inp3:in std_logic_vector(7 downto 0);
     outp0,outp1,outp2,outp3:out std_logic_vector(7 downto 0));
end entity mixcol;
architecture arch_mixcol of mixcol is

begin 

process (inp0,inp1,inp2,inp3)

type arr is array( 0 to 3) of std_logic_vector(7 downto 0);
variable temp:arr;
begin
temp(0):=GF_mul(inp0,X"02") xor GF_mul(inp1,X"03") xor GF_mul(inp2,X"01") xor GF_mul(inp3,X"01");
temp(1):=GF_mul(inp0,X"01") xor GF_mul(inp1,X"02") xor GF_mul(inp2,X"03") xor GF_mul(inp3,X"01");
temp(2):=GF_mul(inp0,X"01") xor GF_mul(inp1,X"01") xor GF_mul(inp2,X"02") xor GF_mul(inp3,X"03");
temp(3):=GF_mul(inp0,X"03") xor GF_mul(inp1,X"01") xor GF_mul(inp2,X"01") xor GF_mul(inp3,X"02");
outp0<=temp(0);
outp1<=temp(1);
outp2<=temp(2);
outp3<=temp(3);
end process;
end arch_mixcol;

library ieee;use ieee.std_logic_1164.all;
entity mixcols is 
port (inp_mixcol:in std_logic_vector(0 to 127);
		outp_mixcol:out std_logic_vector(0 to 127));
		end entity;
architecture arch_mixcols of mixcols is
component mixcol  is

port(inp0,inp1,inp2,inp3:in std_logic_vector(7 downto 0);
     outp0,outp1,outp2,outp3:out std_logic_vector(7 downto 0));
end component;

begin
MC1: mixcol port map(inp_mixcol(0 to 7),inp_mixcol(8 to 15),inp_mixcol(16 to 23),inp_mixcol(24 to 31),outp_mixcol(0 to 7),outp_mixcol(8 to 15),outp_mixcol(16 to 23),outp_mixcol(24 to 31) );
MC2: mixcol port map(inp_mixcol(32 to 39),inp_mixcol(40 to 47),inp_mixcol(48 to 55),inp_mixcol(56 to 63),outp_mixcol(32 to 39),outp_mixcol(40 to 47),outp_mixcol(48 to 55),outp_mixcol(56 to 63) );
MC3: mixcol port map(inp_mixcol(64 to 71),inp_mixcol(72 to 79),inp_mixcol(80 to 87),inp_mixcol(88 to 95),outp_mixcol(64 to 71),outp_mixcol(72 to 79),outp_mixcol(80 to 87),outp_mixcol(88 to 95) );
MC4: mixcol port map(inp_mixcol(96 to 103),inp_mixcol(104 to 111),inp_mixcol(112 to 119),inp_mixcol(120 to 127),outp_mixcol(96 to 103),outp_mixcol(104 to 111),outp_mixcol(112 to 119),outp_mixcol(120 to 127) );

end arch_mixcols;
--------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
package function_pkg is

function sub_bytes (X:std_logic_vector) return std_logic_vector ;
end function_pkg;
package body function_pkg is
function sub_bytes (X:std_logic_vector) return std_logic_vector is
variable temp,outp:std_logic_vector(0 to 7);
begin
temp:=X;
case temp is
when X"00" => outp:= X"63";
when X"01" => outp:= X"7c";
when X"02" => outp:= X"77";
when X"03" => outp:= X"7b";
when X"04" => outp:= X"f2";
when X"05" => outp:= X"6b";
when X"06" => outp:= X"6f";
when X"07" => outp:= X"c5";
when X"08" => outp:= X"30";
when X"09" => outp:= X"01";
when X"0a" => outp:= X"67";
when X"0b" => outp:= X"2b";
when X"0c" => outp:= X"fe";
when X"0d" => outp:= X"d7";
when X"0e" => outp:= X"ab";
when X"0f" => outp:= X"76";
when X"10" => outp:= X"ca";
when X"11" => outp:= X"82";
when X"12" => outp:= X"c9";
when X"13" => outp:= X"7d";
when X"14" => outp:= X"fa";
when X"15" => outp:= X"59";
when X"16" => outp:= X"47";
when X"17" => outp:= X"f0";
when X"18" => outp:= X"ad";
when X"19" => outp:= X"d4";
when X"1a" => outp:= X"a2";
when X"1b" => outp:= X"af";
when X"1c" => outp:= X"9c";
when X"1d" => outp:= X"a4";
when X"1e" => outp:= X"72";
when X"1f" => outp:= X"c0";
when X"20" => outp:= X"b7";
when X"21" => outp:= X"fd";
when X"22" => outp:= X"93";
when X"23" => outp:= X"26";
when X"24" => outp:= X"36";
when X"25" => outp:= X"3f";
when X"26" => outp:= X"f7";
when X"27" => outp:= X"cc";
when X"28" => outp:= X"34";
when X"29" => outp:= X"a5";
when X"2a" => outp:= X"e5";
when X"2b" => outp:= X"f1";
when X"2c" => outp:= X"71";
when X"2d" => outp:= X"d8";
when X"2e" => outp:= X"31";
when X"2f" => outp:= X"15";
when X"30" => outp:= X"04";
when X"31" => outp:= X"c7";
when X"32" => outp:= X"23";
when X"33" => outp:= X"c3";
when X"34" => outp:= X"18";
when X"35" => outp:= X"96";
when X"36" => outp:= X"05";
when X"37" => outp:= X"9a";
when X"38" => outp:= X"07";
when X"39" => outp:= X"12";
when X"3a" => outp:= X"80";
when X"3b" => outp:= X"e2";
when X"3c" => outp:= X"eb";
when X"3d" => outp:= X"27";
when X"3e" => outp:= X"b2";
when X"3f" => outp:= X"75";
when X"40" => outp:= X"09";
when X"41" => outp:= X"83";
when X"42" => outp:= X"2c";
when X"43" => outp:= X"1a";
when X"44" => outp:= X"1b";
when X"45" => outp:= X"6e";
when X"46" => outp:= X"5a";
when X"47" => outp:= X"a0";
when X"48" => outp:= X"52";
when X"49" => outp:= X"3b";
when X"4a" => outp:= X"d6";
when X"4b" => outp:= X"b3";
when X"4c" => outp:= X"29";
when X"4d" => outp:= X"e3";
when X"4e" => outp:= X"2f";
when X"4f" => outp:= X"84";
when X"50" => outp:= X"53";
when X"51" => outp:= X"d1";
when X"52" => outp:= X"00";
when X"53" => outp:= X"ed";
when X"54" => outp:= X"20";
when X"55" => outp:= X"fc";
when X"56" => outp:= X"b1";
when X"57" => outp:= X"5b";
when X"58" => outp:= X"6a";
when X"59" => outp:= X"cb";
when X"5a" => outp:= X"be";
when X"5b" => outp:= X"39";
when X"5c" => outp:= X"4a";
when X"5d" => outp:= X"4c";
when X"5e" => outp:= X"58";
when X"5f" => outp:= X"cf";
when X"60" => outp:= X"d0";
when X"61" => outp:= X"ef";
when X"62" => outp:= X"aa";
when X"63" => outp:= X"fb";
when X"64" => outp:= X"43";
when X"65" => outp:= X"4d";
when X"66" => outp:= X"33";
when X"67" => outp:= X"85";
when X"68" => outp:= X"45";
when X"69" => outp:= X"f9";
when X"6a" => outp:= X"02";
when X"6b" => outp:= X"7f";
when X"6c" => outp:= X"50";
when X"6d" => outp:= X"3c";
when X"6e" => outp:= X"9f";
when X"6f" => outp:= X"a8";
when X"70" => outp:= X"51";
when X"71" => outp:= X"a3";
when X"72" => outp:= X"40";
when X"73" => outp:= X"8f";
when X"74" => outp:= X"92";
when X"75" => outp:= X"9d";
when X"76" => outp:= X"38";
when X"77" => outp:= X"f5";
when X"78" => outp:= X"bc";
when X"79" => outp:= X"b6";
when X"7a" => outp:= X"da";
when X"7b" => outp:= X"21";
when X"7c" => outp:= X"10";
when X"7d" => outp:= X"ff";
when X"7e" => outp:= X"f3";
when X"7f" => outp:= X"d2";
when X"80" => outp:= X"cd";
when X"81" => outp:= X"0c";
when X"82" => outp:= X"13";
when X"83" => outp:= X"ec";
when X"84" => outp:= X"5f";
when X"85" => outp:= X"97";
when X"86" => outp:= X"44";
when X"87" => outp:= X"17";
when X"88" => outp:= X"c4";
when X"89" => outp:= X"a7";
when X"8a" => outp:= X"7e";
when X"8b" => outp:= X"3d";
when X"8c" => outp:= X"64";
when X"8d" => outp:= X"5d";
when X"8e" => outp:= X"19";
when X"8f" => outp:= X"73";
when X"90" => outp:= X"60";
when X"91" => outp:= X"81";
when X"92" => outp:= X"4f";
when X"93" => outp:= X"dc";
when X"94" => outp:= X"22";
when X"95" => outp:= X"2a";
when X"96" => outp:= X"90";
when X"97" => outp:= X"88";
when X"98" => outp:= X"46";
when X"99" => outp:= X"ee";
when X"9a" => outp:= X"b8";
when X"9b" => outp:= X"14";
when X"9c" => outp:= X"de";
when X"9d" => outp:= X"5e";
when X"9e" => outp:= X"0b";
when X"9f" => outp:= X"db";
when X"a0" => outp:= X"e0";
when X"a1" => outp:= X"32";
when X"a2" => outp:= X"3a";
when X"a3" => outp:= X"0a";
when X"a4" => outp:= X"49";
when X"a5" => outp:= X"06";
when X"a6" => outp:= X"24";
when X"a7" => outp:= X"5c";
when X"a8" => outp:= X"c2";
when X"a9" => outp:= X"d3";
when X"aa" => outp:= X"ac";
when X"ab" => outp:= X"62";
when X"ac" => outp:= X"91";
when X"ad" => outp:= X"95";
when X"ae" => outp:= X"e4";
when X"af" => outp:= X"79";
when X"b0" => outp:= X"e7";
when X"b1" => outp:= X"c8";
when X"b2" => outp:= X"37";
when X"b3" => outp:= X"6d";
when X"b4" => outp:= X"8d";
when X"b5" => outp:= X"d5";
when X"b6" => outp:= X"4e";
when X"b7" => outp:= X"a9";
when X"b8" => outp:= X"6c";
when X"b9" => outp:= X"56";
when X"ba" => outp:= X"f4";
when X"bb" => outp:= X"ea";
when X"bc" => outp:= X"65";
when X"bd" => outp:= X"7a";
when X"be" => outp:= X"ae";
when X"bf" => outp:= X"08";
when X"c0" => outp:= X"ba";
when X"c1" => outp:= X"78";
when X"c2" => outp:= X"25";
when X"c3" => outp:= X"2e";
when X"c4" => outp:= X"1c";
when X"c5" => outp:= X"a6";
when X"c6" => outp:= X"b4";
when X"c7" => outp:= X"c6";
when X"c8" => outp:= X"e8";
when X"c9" => outp:= X"dd";
when X"ca" => outp:= X"74";
when X"cb" => outp:= X"1f";
when X"cc" => outp:= X"4b";
when X"cd" => outp:= X"bd";
when X"ce" => outp:= X"8b";
when X"cf" => outp:= X"8a";
when X"d0" => outp:= X"70";
when X"d1" => outp:= X"3e";
when X"d2" => outp:= X"b5";
when X"d3" => outp:= X"66";
when X"d4" => outp:= X"48";
when X"d5" => outp:= X"03";
when X"d6" => outp:= X"f6";
when X"d7" => outp:= X"0e";
when X"d8" => outp:= X"61";
when X"d9" => outp:= X"35";
when X"da" => outp:= X"57";
when X"db" => outp:= X"b9";
when X"dc" => outp:= X"86";
when X"dd" => outp:= X"c1";
when X"de" => outp:= X"1d";
when X"df" => outp:= X"9e";
when X"e0" => outp:= X"e1";
when X"e1" => outp:= X"f8";
when X"e2" => outp:= X"98";
when X"e3" => outp:= X"11";
when X"e4" => outp:= X"69";
when X"e5" => outp:= X"d9";
when X"e6" => outp:= X"8e";
when X"e7" => outp:= X"94";
when X"e8" => outp:= X"9b";
when X"e9" => outp:= X"1e";
when X"ea" => outp:= X"87";
when X"eb" => outp:= X"e9";
when X"ec" => outp:= X"ce";
when X"ed" => outp:= X"55";
when X"ee" => outp:= X"28";
when X"ef" => outp:= X"df";
when X"f0" => outp:= X"8c";
when X"f1" => outp:= X"a1";
when X"f2" => outp:= X"89";
when X"f3" => outp:= X"0d";
when X"f4" => outp:= X"bf";
when X"f5" => outp:= X"e6";
when X"f6" => outp:= X"42";
when X"f7" => outp:= X"68";
when X"f8" => outp:= X"41";
when X"f9" => outp:= X"99";
when X"fa" => outp:= X"2d";
when X"fb" => outp:= X"0f";
when X"fc" => outp:= X"b0";
when X"fd" => outp:= X"54";
when X"fe" => outp:= X"bb";
when X"ff" => outp:= X"16";
when others => outp:= X"00";
end case;
return outp;
end function;
end function_pkg;

library ieee;
use ieee.std_logic_1164.all;
use work.function_pkg.all;
entity subbytes is
port(input_sub:in std_logic_vector(0 to 127);
		output_sub:out std_logic_vector(0 to 127));
end entity;
architecture arch_subbytes  of subbytes is
begin
process(input_sub)
variable tempo:std_logic_vector(0 to 7):="00000000";
begin
FF1: for i in 0 to 15 loop
tempo:=input_sub(i*8 to i*8+7);
output_sub(i*8 to i*8+7)<=sub_bytes(tempo);
end loop;
end process;
end arch_subbytes;
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity shiftrows is
port(insr:in std_logic_vector(0 to 127);
		outsr:out std_logic_vector(0 to 127));
end entity;
architecture arch_shiftrows of shiftrows is

begin
outsr(0 to 7)<=insr(0 to 7);--0
outsr(8 to 15)<=insr(40 to 47);--1
outsr(16 to 23)<=insr(80 to 87);--2
outsr(24 to 31)<=insr(120 to 127);--3
outsr(32 to 39)<=insr(32 to 39);--4
outsr(40 to 47)<=insr(72 to 79);--5
outsr(48 to 55)<=insr(112 to 119);--6
outsr(56 to 63)<=insr(24 to 31);--7
outsr(64 to 71)<=insr(64 to 71);--8
outsr(72 to 79)<=insr(104 to 111);--9
outsr(80 to 87)<=insr(16 to 23);--10
outsr(88 to 95)<=insr(56 to 63);--11
outsr(96 to 103)<=insr(96 to 103);--12
outsr(104 to 111)<=insr(8 to 15);--13
outsr(112 to 119)<=insr(48 to 55);--14
outsr(120 to 127)<=insr(88 to 95);--15
end arch_shiftrows;
-------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity comb1 is
port(inp_comb1:in std_logic_vector(0 to 127);
		round_key1:in std_logic_vector(0 to 127);
		out_comb1:out std_logic_vector(0 to 127));
end comb1;

architecture arch_comb1 of comb1 is
----
component shiftrows is
port(insr:in std_logic_vector(0 to 127);
		outsr:out std_logic_vector(0 to 127));
end component;

component subbytes is
port(input_sub:in std_logic_vector(0 to 127);
		output_sub:out std_logic_vector(0 to 127));
end component;

component mixcols is 
port (inp_mixcol:in std_logic_vector(0 to 127);
		outp_mixcol:out std_logic_vector(0 to 127));
		end component;
----
type arr_temp is array (0 to 2) of std_logic_vector(0 to 127);
signal temp_sig:arr_temp;
begin
sub1: subbytes port map(inp_comb1,temp_sig(0));
sub2: shiftrows port map(temp_sig(0),temp_sig(1));
sub3: mixcols port map(temp_sig(1),temp_sig(2));
out_comb1<=round_key1 xor temp_sig(2);



end arch_comb1;
--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package pkg_mixer_function2 is
function GF_mul2(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector;
end pkg_mixer_function2;
package body pkg_mixer_function2 is


function GF_mul2(X:std_logic_vector;Y:std_logic_vector)  return std_logic_vector is
variable temp:std_logic_vector(7 downto 0):=X"00";
begin
if Y=X"09" then 
temp:=( X(7) xor X(4)) & ( X(6) xor X(3) xor X(7)) & (X(5) xor X(7)  xor X(2) xor X(6)) & (X(6)xor X(5) xor X(4) xor X(1)) & ( X(5) xor X(3) xor X(7) xor X(0)) & (X(7) xor X(6) xor X(2)) & ( X(1)  xor X(6) xor X(5)) & (X(0)  xor X(5));
elsif Y=X"0B" then
temp:=(X(6) xor X(7) xor X(4))&(X(5) xor X(6) xor X(3) xor X(7))&(X(5) xor X(4) xor X(7) xor X(2) xor X(6))&(X(3) xor X(4) xor X(1) xor X(7) xor X(6) xor X(5))&(X(3) xor X(2) xor X(0) xor X(5))&(X(1) xor X(7) xor X(6) xor X(2))&(X(0) xor X(1) xor X(6) xor X(7) xor X(5))&(X(0) xor X(7) xor X(5));
elsif Y=X"0E" then
temp:=(X(6) xor X(5) xor X(4))&(X(5) xor X(4) xor X(3) xor X(7))&(X(4) xor X(3) xor X(6) xor X(2))&(X(3) xor X(2) xor X(1) xor X(5))&(X(2) xor X(1) xor X(0) xor X(6) xor X(5))&(X(1) xor X(0) xor X(6))&(X(0) xor X(5))&(X(6) xor X(7) xor X(5));
elsif Y=X"0D" then
temp:=(X(5) xor X(7) xor X(4))&(X(4) xor X(6) xor X(3) xor X(7))&(X(5) xor X(3)  xor X(2) xor X(6))&(X(2) xor X(4) xor X(1) xor X(7) xor X(5) )&(X(3) xor X(1) xor X(0) xor X(5) xor X(7) xor X(6))&(X(0) xor X(6) xor X(2))&( X(1)  xor X(7) xor X(5))&(X(0) xor X(6) xor X(5));

else
temp:="00000000";
end if;
 
return temp;
end function;
end pkg_mixer_function2;


library ieee;
use ieee.std_logic_1164.all;
use work.pkg_mixer_function2.all;
entity imixcol  is

port(inp0,inp1,inp2,inp3:in std_logic_vector(7 downto 0);
     outp0,outp1,outp2,outp3:out std_logic_vector(7 downto 0));
end entity imixcol;
architecture arch_imixcol of imixcol is

begin 

process (inp0,inp1,inp2,inp3)

type arr is array( 0 to 3) of std_logic_vector(7 downto 0);
variable temp:arr;
begin
temp(0):=GF_mul2(inp0,X"0E") xor GF_mul2(inp1,X"0B") xor GF_mul2(inp2,X"0D") xor GF_mul2(inp3,X"09");
temp(1):=GF_mul2(inp0,X"09") xor GF_mul2(inp1,X"0E") xor GF_mul2(inp2,X"0B") xor GF_mul2(inp3,X"0D");
temp(2):=GF_mul2(inp0,X"0D") xor GF_mul2(inp1,X"09") xor GF_mul2(inp2,X"0E") xor GF_mul2(inp3,X"0B");
temp(3):=GF_mul2(inp0,X"0B") xor GF_mul2(inp1,X"0D") xor GF_mul2(inp2,X"09") xor GF_mul2(inp3,X"0E");
outp0<=temp(0);
outp1<=temp(1);
outp2<=temp(2);
outp3<=temp(3);
end process;
end arch_imixcol;

library ieee;use ieee.std_logic_1164.all;
entity imixcols is 
port (inp_imixcol:in std_logic_vector(0 to 127);
		outp_imixcol:out std_logic_vector(0 to 127));
		end entity;
architecture arch_imixcols of imixcols is
component imixcol  is

port(inp0,inp1,inp2,inp3:in std_logic_vector(7 downto 0);
     outp0,outp1,outp2,outp3:out std_logic_vector(7 downto 0));
end component;

begin
IMC1: imixcol port map(inp_imixcol(0 to 7),inp_imixcol(8 to 15),inp_imixcol(16 to 23),inp_imixcol(24 to 31),outp_imixcol(0 to 7),outp_imixcol(8 to 15),outp_imixcol(16 to 23),outp_imixcol(24 to 31) );
IMC2: imixcol port map(inp_imixcol(32 to 39),inp_imixcol(40 to 47),inp_imixcol(48 to 55),inp_imixcol(56 to 63),outp_imixcol(32 to 39),outp_imixcol(40 to 47),outp_imixcol(48 to 55),outp_imixcol(56 to 63) );
IMC3: imixcol port map(inp_imixcol(64 to 71),inp_imixcol(72 to 79),inp_imixcol(80 to 87),inp_imixcol(88 to 95),outp_imixcol(64 to 71),outp_imixcol(72 to 79),outp_imixcol(80 to 87),outp_imixcol(88 to 95) );
IMC4: imixcol port map(inp_imixcol(96 to 103),inp_imixcol(104 to 111),inp_imixcol(112 to 119),inp_imixcol(120 to 127),outp_imixcol(96 to 103),outp_imixcol(104 to 111),outp_imixcol(112 to 119),outp_imixcol(120 to 127) );

end arch_imixcols;
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity ishiftrows is
port(inisr:in std_logic_vector(0 to 127);
		outisr:out std_logic_vector(0 to 127));
end entity;
architecture arch_ishiftrows of ishiftrows is

begin
outisr(0 to 7)<=inisr(0 to 7);--0
outisr(8 to 15)<=inisr(104 to 111);--1
outisr(16 to 23)<=inisr(80 to 87);--2
outisr(24 to 31)<=inisr(56 to 63);--3
outisr(32 to 39)<=inisr(32 to 39);--4
outisr(40 to 47)<=inisr(8 to 15);--5
outisr(48 to 55)<=inisr(112 to 119);--6
outisr(56 to 63)<=inisr(88 to 95);--7
outisr(64 to 71)<=inisr(64 to 71);--8
outisr(72 to 79)<=inisr(40 to 47);--9
outisr(80 to 87)<=inisr(16 to 23);--10
outisr(88 to 95)<=inisr(120 to 127);--11
outisr(96 to 103)<=inisr(96 to 103);--12
outisr(104 to 111)<=inisr(72 to 79);--13
outisr(112 to 119)<=inisr(48 to 55);--14
outisr(120 to 127)<=inisr(24 to 31);--15
end arch_ishiftrows;
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
package function_ipkg is

function isub_bytes (X:std_logic_vector) return std_logic_vector ;
end function_ipkg;
package body function_ipkg is
function isub_bytes (X:std_logic_vector) return std_logic_vector is
variable tempi,outp:std_logic_vector(0 to 7);
begin
tempi:=X;
case tempi is
when X"00" => outp:= X"52";
when X"01" => outp:= X"09";
when X"02" => outp:= X"6a";
when X"03" => outp:= X"d5";
when X"04" => outp:= X"30";
when X"05" => outp:= X"36";
when X"06" => outp:= X"a5";
when X"07" => outp:= X"38";
when X"08" => outp:= X"bf";
when X"09" => outp:= X"40";
when X"0a" => outp:= X"a3";
when X"0b" => outp:= X"9e";
when X"0c" => outp:= X"81";
when X"0d" => outp:= X"f3";
when X"0e" => outp:= X"d7";
when X"0f" => outp:= X"fb";
when X"10" => outp:= X"7c";
when X"11" => outp:= X"e3";
when X"12" => outp:= X"39";
when X"13" => outp:= X"82";
when X"14" => outp:= X"9b";
when X"15" => outp:= X"2f";
when X"16" => outp:= X"ff";
when X"17" => outp:= X"87";
when X"18" => outp:= X"34";
when X"19" => outp:= X"8e";
when X"1a" => outp:= X"43";
when X"1b" => outp:= X"44";
when X"1c" => outp:= X"c4";
when X"1d" => outp:= X"de";
when X"1e" => outp:= X"e9";
when X"1f" => outp:= X"cb";
when X"20" => outp:= X"54";
when X"21" => outp:= X"7b";
when X"22" => outp:= X"94";
when X"23" => outp:= X"32";
when X"24" => outp:= X"a6";
when X"25" => outp:= X"c2";
when X"26" => outp:= X"23";
when X"27" => outp:= X"3d";
when X"28" => outp:= X"ee";
when X"29" => outp:= X"4c";
when X"2a" => outp:= X"95";
when X"2b" => outp:= X"0b";
when X"2c" => outp:= X"42";
when X"2d" => outp:= X"fa";
when X"2e" => outp:= X"c3";
when X"2f" => outp:= X"4e";
when X"30" => outp:= X"08";
when X"31" => outp:= X"2e";
when X"32" => outp:= X"a1";
when X"33" => outp:= X"66";
when X"34" => outp:= X"28";
when X"35" => outp:= X"d9";
when X"36" => outp:= X"24";
when X"37" => outp:= X"b2";
when X"38" => outp:= X"76";
when X"39" => outp:= X"5b";
when X"3a" => outp:= X"a2";
when X"3b" => outp:= X"49";
when X"3c" => outp:= X"6d";
when X"3d" => outp:= X"8b";
when X"3e" => outp:= X"d1";
when X"3f" => outp:= X"25";
when X"40" => outp:= X"72";
when X"41" => outp:= X"f8";
when X"42" => outp:= X"f6";
when X"43" => outp:= X"64";
when X"44" => outp:= X"86";
when X"45" => outp:= X"68";
when X"46" => outp:= X"98";
when X"47" => outp:= X"16";
when X"48" => outp:= X"d4";
when X"49" => outp:= X"a4";
when X"4a" => outp:= X"5c";
when X"4b" => outp:= X"cc";
when X"4c" => outp:= X"5d";
when X"4d" => outp:= X"65";
when X"4e" => outp:= X"b6";
when X"4f" => outp:= X"92";
when X"50" => outp:= X"6c";
when X"51" => outp:= X"70";
when X"52" => outp:= X"48";
when X"53" => outp:= X"50";
when X"54" => outp:= X"fd";
when X"55" => outp:= X"ed";
when X"56" => outp:= X"b9";
when X"57" => outp:= X"da";
when X"58" => outp:= X"5e";
when X"59" => outp:= X"15";
when X"5a" => outp:= X"46";
when X"5b" => outp:= X"57";
when X"5c" => outp:= X"a7";
when X"5d" => outp:= X"8d";
when X"5e" => outp:= X"9d";
when X"5f" => outp:= X"84";
when X"60" => outp:= X"90";
when X"61" => outp:= X"d8";
when X"62" => outp:= X"ab";
when X"63" => outp:= X"00";
when X"64" => outp:= X"8c";
when X"65" => outp:= X"bc";
when X"66" => outp:= X"d3";
when X"67" => outp:= X"0a";
when X"68" => outp:= X"f7";
when X"69" => outp:= X"e4";
when X"6a" => outp:= X"58";
when X"6b" => outp:= X"05";
when X"6c" => outp:= X"b8";
when X"6d" => outp:= X"b3";
when X"6e" => outp:= X"45";
when X"6f" => outp:= X"06";
when X"70" => outp:= X"d0";
when X"71" => outp:= X"2c";
when X"72" => outp:= X"1e";
when X"73" => outp:= X"8f";
when X"74" => outp:= X"ca";
when X"75" => outp:= X"3f";
when X"76" => outp:= X"0f";
when X"77" => outp:= X"02";
when X"78" => outp:= X"c1";
when X"79" => outp:= X"af";
when X"7a" => outp:= X"bd";
when X"7b" => outp:= X"03";
when X"7c" => outp:= X"01";
when X"7d" => outp:= X"13";
when X"7e" => outp:= X"8a";
when X"7f" => outp:= X"6b";
when X"80" => outp:= X"3a";
when X"81" => outp:= X"91";
when X"82" => outp:= X"11";
when X"83" => outp:= X"41";
when X"84" => outp:= X"4f";
when X"85" => outp:= X"67";
when X"86" => outp:= X"dc";
when X"87" => outp:= X"ea";
when X"88" => outp:= X"97";
when X"89" => outp:= X"f2";
when X"8a" => outp:= X"cf";
when X"8b" => outp:= X"ce";
when X"8c" => outp:= X"f0";
when X"8d" => outp:= X"b4";
when X"8e" => outp:= X"e6";
when X"8f" => outp:= X"73";
when X"90" => outp:= X"96";
when X"91" => outp:= X"ac";
when X"92" => outp:= X"74";
when X"93" => outp:= X"22";
when X"94" => outp:= X"e7";
when X"95" => outp:= X"ad";
when X"96" => outp:= X"35";
when X"97" => outp:= X"85";
when X"98" => outp:= X"e2";
when X"99" => outp:= X"f9";
when X"9a" => outp:= X"37";
when X"9b" => outp:= X"e8";
when X"9c" => outp:= X"1c";
when X"9d" => outp:= X"75";
when X"9e" => outp:= X"df";
when X"9f" => outp:= X"6e";
when X"a0" => outp:= X"47";
when X"a1" => outp:= X"f1";
when X"a2" => outp:= X"1a";
when X"a3" => outp:= X"71";
when X"a4" => outp:= X"1d";
when X"a5" => outp:= X"29";
when X"a6" => outp:= X"c5";
when X"a7" => outp:= X"89";
when X"a8" => outp:= X"6f";
when X"a9" => outp:= X"b7";
when X"aa" => outp:= X"62";
when X"ab" => outp:= X"0e";
when X"ac" => outp:= X"aa";
when X"ad" => outp:= X"18";
when X"ae" => outp:= X"be";
when X"af" => outp:= X"1b";
when X"b0" => outp:= X"fc";
when X"b1" => outp:= X"56";
when X"b2" => outp:= X"3e";
when X"b3" => outp:= X"4b";
when X"b4" => outp:= X"c6";
when X"b5" => outp:= X"d2";
when X"b6" => outp:= X"79";
when X"b7" => outp:= X"20";
when X"b8" => outp:= X"9a";
when X"b9" => outp:= X"db";
when X"ba" => outp:= X"c0";
when X"bb" => outp:= X"fe";
when X"bc" => outp:= X"78";
when X"bd" => outp:= X"cd";
when X"be" => outp:= X"5a";
when X"bf" => outp:= X"f4";
when X"c0" => outp:= X"1f";
when X"c1" => outp:= X"dd";
when X"c2" => outp:= X"a8";
when X"c3" => outp:= X"33";
when X"c4" => outp:= X"88";
when X"c5" => outp:= X"07";
when X"c6" => outp:= X"c7";
when X"c7" => outp:= X"31";
when X"c8" => outp:= X"b1";
when X"c9" => outp:= X"12";
when X"ca" => outp:= X"10";
when X"cb" => outp:= X"59";
when X"cc" => outp:= X"27";
when X"cd" => outp:= X"80";
when X"ce" => outp:= X"ec";
when X"cf" => outp:= X"5f";
when X"d0" => outp:= X"60";
when X"d1" => outp:= X"51";
when X"d2" => outp:= X"7f";
when X"d3" => outp:= X"a9";
when X"d4" => outp:= X"19";
when X"d5" => outp:= X"b5";
when X"d6" => outp:= X"4a";
when X"d7" => outp:= X"0d";
when X"d8" => outp:= X"2d";
when X"d9" => outp:= X"e5";
when X"da" => outp:= X"7a";
when X"db" => outp:= X"9f";
when X"dc" => outp:= X"93";
when X"dd" => outp:= X"c9";
when X"de" => outp:= X"9c";
when X"df" => outp:= X"ef";
when X"e0" => outp:= X"a0";
when X"e1" => outp:= X"e0";
when X"e2" => outp:= X"3b";
when X"e3" => outp:= X"4d";
when X"e4" => outp:= X"ae";
when X"e5" => outp:= X"2a";
when X"e6" => outp:= X"f5";
when X"e7" => outp:= X"b0";
when X"e8" => outp:= X"c8";
when X"e9" => outp:= X"eb";
when X"ea" => outp:= X"bb";
when X"eb" => outp:= X"3c";
when X"ec" => outp:= X"83";
when X"ed" => outp:= X"53";
when X"ee" => outp:= X"99";
when X"ef" => outp:= X"61";
when X"f0" => outp:= X"17";
when X"f1" => outp:= X"2b";
when X"f2" => outp:= X"04";
when X"f3" => outp:= X"7e";
when X"f4" => outp:= X"ba";
when X"f5" => outp:= X"77";
when X"f6" => outp:= X"d6";
when X"f7" => outp:= X"26";
when X"f8" => outp:= X"e1";
when X"f9" => outp:= X"69";
when X"fa" => outp:= X"14";
when X"fb" => outp:= X"63";
when X"fc" => outp:= X"55";
when X"fd" => outp:= X"21";
when X"fe" => outp:= X"0c";
when X"ff" => outp:= X"7d";
when others=> outp:=X"00";
end case;
return outp;
end function;
end function_ipkg;

library ieee;
use ieee.std_logic_1164.all;
use work.function_ipkg.all;
entity isubbytes is
port(input_isub:in std_logic_vector(0 to 127);
		output_isub:out std_logic_vector(0 to 127));
end entity;
architecture arch_isubbytes  of isubbytes is
begin
process(input_isub)
variable tempo_i:std_logic_vector(0 to 7):="00000000";
begin
FF1: for i in 0 to 15 loop
tempo_i:=input_isub(i*8 to i*8+7);
output_isub(i*8 to i*8+7)<=isub_bytes(tempo_i);
end loop;
end process;
end arch_isubbytes;

-----------------------------
library ieee;
use ieee.std_logic_1164.all;
entity comb2 is
port( inp_comb2:in std_logic_vector(0 to 127);
		key_comb2:in std_logic_vector(0 to 127);
		out_comb2:out std_logic_vector(0 to 127));
end comb2;
architecture arch_comb2 of comb2 is

component isubbytes is
port(input_isub:in std_logic_vector(0 to 127);
		output_isub:out std_logic_vector(0 to 127));
end component;

component ishiftrows is
port(inisr:in std_logic_vector(0 to 127);
		outisr:out std_logic_vector(0 to 127));
end component;

component imixcols is 
port (inp_imixcol:in std_logic_vector(0 to 127);
		outp_imixcol:out std_logic_vector(0 to 127));
		end component;
type arr_comb2 is array( 0 to 2) of std_logic_vector (0  to 127);
signal sig_comb2:arr_comb2;
begin
sig_comb2(0)<= inp_comb2 xor key_comb2;

sub1_comb2: imixcols port map(sig_comb2(0), sig_comb2(1));
sub2_comb2: ishiftrows port map(sig_comb2(1), sig_comb2(2));
sub3_comb2: isubbytes port map(sig_comb2(2), out_comb2);
end arch_comb2;
-----------------------
library ieee;
use ieee.std_logic_1164.all;
entity AES is
port (input:in std_logic_vector(0 to 127);
		clk,en_dcbar:in std_logic;
		output:out std_logic_vector(0 to 127));
end AES;
architecture arch_AES of AES is
--------------
component comb2 is--comb2
port( inp_comb2:in std_logic_vector(0 to 127);
		key_comb2:in std_logic_vector(0 to 127);
		out_comb2:out std_logic_vector(0 to 127));
end component;
component comb1 is--comb1
port(inp_comb1:in std_logic_vector(0 to 127);
		round_key1:in std_logic_vector(0 to 127);
		out_comb1:out std_logic_vector(0 to 127));
end component;
component subbytes is--subbytes
port(input_sub:in std_logic_vector(0 to 127);
		output_sub:out std_logic_vector(0 to 127));
end component;
component shiftrows is--shiftrows
port(insr:in std_logic_vector(0 to 127);
		outsr:out std_logic_vector(0 to 127));
end component;
component ishiftrows is--ishiftrows
port(inisr:in std_logic_vector(0 to 127);
		outisr:out std_logic_vector(0 to 127));
end component;
component isubbytes is--isubbytes
port(input_isub:in std_logic_vector(0 to 127);
		output_isub:out std_logic_vector(0 to 127));
end component;
component keygenerator is
port(key:in std_logic_vector(0 to 127);
subkey0,subkey1,subkey2,subkey3,subkey4,subkey5,subkey6,subkey7,subkey8,subkey9,subkey10:out std_logic_vector(0 to 127));
end component;
component reg128 is
port (d:in std_logic_vector(0 to 127);
		clk: in std_logic;
		q:out std_logic_vector(0 to 127));
		end component ;
-----------------
type  arr_xyz is array (0 to 10) of std_logic_vector(0 to 127);
signal post2,pre2,post1,pre1,keyz:arr_xyz;
type  arr_xyzw  is array (1 to 3) of std_logic_vector(0 to 127);
signal temp:arr_xyzw;
--------------
begin
keygen: keygenerator port map(X"11111111111111111111111111111111",keyz(0),keyz(1),keyz(2),keyz(3),keyz(4),keyz(5),keyz(6),keyz(7),keyz(8),keyz(9),keyz(10));
pre1(0)<=input when en_dcbar='1' else (others=>'0');
pre2(0)<=input when en_dcbar='0' else (others=>'0');
post1(0)<=pre1(0) xor keyz(0);
post2(0)<=pre2(0) xor keyz(10);
															
											

pre1(10)<=keyz(10) xor temp(2);
regy: reg128 port map(pre1(10),clk,post1(10));

gen1:for i in 1 to 10 generate
gen2: if i=10 generate
sub1: subbytes port map(post1(i-1),temp(1));
srow1: shiftrows port map(temp(1),temp(2));
end generate;
gen3: if i/=10 generate
comb1_1: comb1 port map( post1(i-1),keyz(i),pre1(i));
regx: reg128 port map(pre1(i),clk,post1(i));
end generate;
end generate;

gen4:for j in 1 to 10 generate
gen5: if j=1 generate
isrow1: ishiftrows port map(post2(j-1),temp(3));
isub1: isubbytes port map(temp(3),pre2(j));
regq: reg128 port map(pre2(j),clk,post2(j));
end generate;
gen6: if j/=1  generate
icomb1_1: comb2 port map( post2(j-1),keyz(11-j),pre2(j));
regz: reg128 port map(pre2(j),clk,post2(j));
end generate;
end generate;
output<=post1(10) when en_dcbar='1' else keyz(0) xor post2(10);



end arch_AES;