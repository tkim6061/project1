-- VHDL Entity project1_lib.Summing_Module.symbol
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 23:26:27 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Summing_Module IS
   PORT( 
      a  : IN     std_logic;
      b  : IN     std_logic;
      c  : IN     std_logic;
      d  : IN     std_logic;
      x0 : OUT    std_logic;
      x1 : OUT    std_logic;
      x2 : OUT    std_logic
   );

-- Declarations

END Summing_Module ;

--
-- VHDL Architecture project1_lib.Summing_Module.struct
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 23:26:27 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY LAB3;

ARCHITECTURE struct OF Summing_Module IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL cin   : std_logic;
   SIGNAL cout  : std_logic;
   SIGNAL cout1 : std_logic;
   SIGNAL cout2 : std_logic;
   SIGNAL s     : std_logic;
   SIGNAL s1    : std_logic;


   -- Component Declarations
   COMPONENT FA
   PORT (
      a    : IN     std_logic ;
      b    : IN     std_logic ;
      cin  : IN     std_logic ;
      cout : OUT    std_logic ;
      s    : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : FA USE ENTITY LAB3.FA;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.7) for instance 'g0' of 'gnd'
   cin <= '0';

   -- Instance port mappings.
   U_1 : FA
      PORT MAP (
         a    => a,
         b    => b,
         cin  => cin,
         cout => cout1,
         s    => s
      );
   U_2 : FA
      PORT MAP (
         a    => c,
         b    => d,
         cin  => cin,
         cout => cout,
         s    => s1
      );
   U_3 : FA
      PORT MAP (
         a    => cout1,
         b    => cout,
         cin  => cout2,
         cout => x2,
         s    => x1
      );
   U_4 : FA
      PORT MAP (
         a    => s,
         b    => s1,
         cin  => cin,
         cout => cout2,
         s    => x0
      );

END struct;
