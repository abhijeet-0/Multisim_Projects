---------------------------------------------------
-- Sheet: Johnson counter
-- RefDes: PLD1
-- Part Number: XC3S500E
-- Generated By: Multisim
--
-- Author: ABHIJEET
-- Date: Thursday, October 17 11:32:50, 2019
---------------------------------------------------

---------------------------------------------------
-- Use: This file defines the top-level of the design
-- Use with the exported package file
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

library work;
use work.Johnson_counter_HDL_pkg.ALL;


entity Johnsoncounter is
	port (

		SW0 : in std_logic;
		SW1 : in std_logic;
		LED0 : out std_logic;
		LED1 : out std_logic;
		LED2 : out std_logic;
		LED3 : out std_logic;
		sys_clk_pin : in std_logic
	);
end Johnsoncounter;


architecture behavioral of Johnsoncounter is


	component AUTO_IBUF
		port(
		I : in std_logic;
		O : out std_logic
	);
	end component;

	component AUTO_OBUF
		port(
		I : in std_logic;
		O : out std_logic
	);
	end component;

	component FF_D_CO_NI
		Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qneg : out  STD_LOGIC);
	end component;

	component XOR2_NI
		port (
    B : in STD_LOGIC := 'X';
    A : in STD_LOGIC := 'X';
    Y : out STD_LOGIC := 'U'
  );
	end component;
	signal \1\ : std_logic;
	signal \7\ : std_logic;
	signal \6\ : std_logic;
	signal \5\ : std_logic;
	signal \4\ : std_logic;
	signal \2\ : std_logic;
	signal \3\ : std_logic;
begin
	SW0_AUTOBUF : AUTO_IBUF
		port map( I => SW0, O => \7\ );
	SW1_AUTOBUF : AUTO_IBUF
		port map( I => SW1, O => \4\ );
	LED0_AUTOBUF : AUTO_OBUF
		port map( I => \1\, O => LED0 );
	LED1_AUTOBUF : AUTO_OBUF
		port map( I => \2\, O => LED1 );
	LED2_AUTOBUF : AUTO_OBUF
		port map( I => \3\, O => LED2 );
	LED3_AUTOBUF : AUTO_OBUF
		port map( I => \5\, O => LED3 );
	U2 : FF_D_CO_NI
		port map( D => \6\, Q => \1\, CLK => \4\, Qneg => open );
	U3 : FF_D_CO_NI
		port map( D => \1\, Q => \2\, CLK => \4\, Qneg => open );
	U4 : FF_D_CO_NI
		port map( D => \2\, Q => \3\, CLK => \4\, Qneg => open );
	U5 : FF_D_CO_NI
		port map( D => \3\, Q => \5\, CLK => \4\, Qneg => open );
	U6 : XOR2_NI
		port map( A => \5\, B => \7\, Y => \6\ );
end behavioral;
