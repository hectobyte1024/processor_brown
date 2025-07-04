
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: top_registro_ag.vhd

--    Date: Mon Jun 30 10:07:54 2025

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY top_registro_ag IS
    PORT (
	                 clk :    in std_logic ;
	                 ain :    in std_logic ;
	                 gin :    in std_logic ;
	                gout :    in std_logic ;
	              addsub :    in std_logic ;
	            buswires :    in std_logic_vector (1 downto 0) ;
	             alu_out : inout std_logic_vector (1 downto 0)
    );
END top_registro_ag;

-- End of Test Bench Header

ARCHITECTURE DSMB of top_registro_ag is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- addsub
	signal jed_node3	: std_logic:='0' ; -- gout
	signal jed_node4	: std_logic:='0' ; -- gin
	signal jed_node5	: std_logic:='0' ; -- buswires(1)
	signal jed_node6	: std_logic:='0' ; -- buswires(0)
	signal jed_node7	: std_logic:='0' ; -- ain
	signal jed_node8	: std_logic:='0' ;
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node14	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node23	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of addsub:SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of gout:SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of gin:SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of buswires(1):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of buswires(0):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of ain:SIGNAL is "0007";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL g_reg_0:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node14:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL a_reg_0:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node15:SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL g_reg_1:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node16:SIGNAL is "0016";

SIGNAL  jed_oept_21:std_logic:='0';
SIGNAL  jed_sum_21,jed_fb_21:std_logic:='0';
--Attribute PIN_NUMBERS of alu_out(0):SIGNAL is "0021";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of alu_out(1):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL a_reg_1:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node23:SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= addsub ;
jed_node3 <= gout ;
jed_node4 <= gin ;
jed_node5 <= buswires(1) ;
jed_node6 <= buswires(0) ;
jed_node7 <= ain ;
Mcell_14:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node14,
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node15,
     fb=>jed_fb_15
   );

Mcell_16:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_16,
     clk=>jed_node1,
     oe=>jed_oept_16,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node16,
     fb=>jed_fb_16
   );

Mcell_21:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_21,
     clk=>jed_node1,
     oe=>jed_oept_21,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>alu_out(0),
     fb=>jed_fb_21
   );

Mcell_22:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>alu_out(1),
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>jed_node23,
     fb=>jed_fb_23
   );

g_reg_0 <= jed_fb_14;
a_reg_0 <= jed_fb_15;
g_reg_1 <= jed_fb_16;
a_reg_1 <= jed_fb_23;
jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_sum_14<= (((jed_node4) and (jed_node6) and not(not(jed_fb_15))
) or
((jed_node4) and not(jed_node6) and (not(jed_fb_15))
) or
(not(jed_node4) and (not(jed_fb_14))));

jed_sum_15<= (((jed_node6) and (jed_node7)) or
(not(jed_node7) and (not(jed_fb_15))));

jed_sum_16<= (((not(jed_fb_23)) and (jed_node2) and (jed_node4) and (jed_node5)
 and (jed_node6) and not(not(jed_fb_15))) or
((not(jed_fb_23)) and not(jed_node2) and (jed_node4)
 and (jed_node5) and (jed_node6) and (not(jed_fb_15))
) or
(not(not(jed_fb_23)) and (jed_node2) and (jed_node4)
 and not(jed_node5) and (jed_node6) and not(not(jed_fb_15))
) or
(not(not(jed_fb_23)) and not(jed_node2) and (jed_node4)
 and not(jed_node5) and (jed_node6) and (not(jed_fb_15))
) or
(not(not(jed_fb_23)) and (jed_node2) and (jed_node4)
 and (jed_node5) and (not(jed_fb_15))) or
(not(not(jed_fb_23)) and not(jed_node2) and (jed_node4)
 and (jed_node5) and not(not(jed_fb_15))) or
((not(jed_fb_23)) and (jed_node2) and (jed_node4) and not(jed_node5)
 and (not(jed_fb_15))) or
((not(jed_fb_23)) and not(jed_node2) and (jed_node4)
 and not(jed_node5) and not(not(jed_fb_15))) or
(not(not(jed_fb_23)) and (jed_node4) and (jed_node5)
 and not(jed_node6)) or
((not(jed_fb_23)) and (jed_node4) and not(jed_node5)
 and not(jed_node6)) or
(not(jed_node4) and (not(jed_fb_16))));

jed_oept_21<=(one);

jed_sum_21<= (((jed_node3) and (not(jed_fb_14))) or
(not(jed_node3) and (jed_fb_21)));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node3) and (not(jed_fb_16))) or
((jed_fb_22) and not(jed_node3)));

jed_sum_23<= (((jed_node5) and (jed_node7)) or
((not(jed_fb_23)) and not(jed_node7)));

end DSMB;
