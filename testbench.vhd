library ieee;
use ieee.std_logic_1164.all;
entity tb_AES is end entity;
architecture tb_arch of tb_AES  is
component AES is
port (input:in std_logic_vector(0 to 127);
		clk,en_dcbar:in std_logic;
		output:out std_logic_vector(0 to 127));
end component;
signal inx,outx:std_logic_vector(0 to 127):=(others=>'0');
signal t_clk,t_en:std_logic:='0';
begin
compx: AES port map(inx,t_clk,t_en,outx);
process
begin 
wait for 10 us;
loop1:for i in 0 to 160 loop
t_clk<= not t_clk;
wait for 10 us;
end loop;
wait;
end process;

--process
--begin 
--wait for 5 us;
--t_en<='1';

--inx<=X"93A1719A6A35F2268337E77B21F77E0F";

--wait for 25 us;
--
--inx<=X"11111111111111111111111111111111";



--wait for 25 us;
--inx<=X"fb78a0c36b1f26ea625e76b391f21141";


--wait;
--end process;
-------------------------------------------------------
--decryption process
process
begin 
wait for 5 us;
t_en<='0';

inx<=X"fb78a0c36b1f26ea625e76b391f21141";

wait for 25 us;

inx<=X"e56e26f5608b8d268f2556e198a0e01b";



wait for 25 us;
inx<=X"147aaced210930a15b376d94158acbbc";


wait;
end process;

end tb_arch;