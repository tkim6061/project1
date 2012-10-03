-- VHDL Entity project1_lib.unlock.symbol
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

ENTITY unlock IS
   PORT( 
      d0 : IN     std_logic;
      d1 : IN     std_logic;
      d2 : IN     std_logic;
      d3 : IN     std_logic;
      p0 : IN     std_logic;
      p1 : IN     std_logic;
      p2 : IN     std_logic;
      p3 : IN     std_logic;
      F  : OUT    std_logic;
      F1 : OUT    std_logic;
      F2 : OUT    std_logic;
      F3 : OUT    std_logic
   );

-- Declarations

END unlock ;

--
-- VHDL Architecture project1_lib.unlock.struct
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

LIBRARY LAB3;

ARCHITECTURE struct OF unlock IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT XORgate
   PORT (
      X : IN     std_logic;
      Y : IN     std_logic;
      F : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : XORgate USE ENTITY LAB3.XORgate;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : XORgate
      PORT MAP (
         X => p3,
         Y => d3,
         F => F3
      );
   U_1 : XORgate
      PORT MAP (
         X => p2,
         Y => d2,
         F => F2
      );
   U_2 : XORgate
      PORT MAP (
         X => p1,
         Y => d1,
         F => F1
      );
   U_3 : XORgate
      PORT MAP (
         X => p0,
         Y => d0,
         F => F
      );

END struct;