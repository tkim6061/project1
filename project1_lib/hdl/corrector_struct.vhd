-- VHDL Entity project1_lib.Corrector.symbol
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 22:44:31 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Corrector IS
   PORT( 
      s0     : IN     std_logic;
      s1     : IN     std_logic;
      s2     : IN     std_logic;
      F      : OUT    std_logic;
      cerror : OUT    std_logic;
      ierror : OUT    std_logic
   );

-- Declarations

END Corrector ;

--
-- VHDL Architecture project1_lib.Corrector.struct
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 22:44:31 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;


ARCHITECTURE struct OF Corrector IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL din0  : std_logic;
   SIGNAL din1  : std_logic;
   SIGNAL din2  : std_logic;
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL dout2 : std_logic;
   SIGNAL dout3 : std_logic;
   SIGNAL dout4 : std_logic;



BEGIN

   -- ModuleWare code(v1.7) for instance 'U_0' of 'and'
   dout <= s0 AND s1;

   -- ModuleWare code(v1.7) for instance 'U_2' of 'and'
   ierror <= dout2 AND s1 AND dout1;

   -- ModuleWare code(v1.7) for instance 'U_5' of 'and'
   dout4 <= din0 AND din1 AND s0;

   -- ModuleWare code(v1.7) for instance 'U_6' of 'and'
   din2 <= dout3 AND s1 AND s0;

   -- ModuleWare code(v1.7) for instance 'U_3' of 'inv'
   dout2 <= NOT(s0);

   -- ModuleWare code(v1.7) for instance 'U_4' of 'inv'
   dout1 <= NOT(s2);

   -- ModuleWare code(v1.7) for instance 'U_7' of 'inv'
   din0 <= NOT(s2);

   -- ModuleWare code(v1.7) for instance 'U_8' of 'inv'
   din1 <= NOT(s1);

   -- ModuleWare code(v1.7) for instance 'U_9' of 'inv'
   dout3 <= NOT(s2);

   -- ModuleWare code(v1.7) for instance 'U_1' of 'or'
   F <= dout OR s2;

   -- ModuleWare code(v1.7) for instance 'U_10' of 'or'
   cerror <= dout4 OR din2;

   -- Instance port mappings.

END struct;
