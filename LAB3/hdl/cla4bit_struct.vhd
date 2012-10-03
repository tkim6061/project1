-- VHDL Entity LAB3.CLA4bit.symbol
--
-- Created:
--          by - kim705.ews (gelib-057-35.ews.illinois.edu)
--          at - 21:41:09 09/18/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY CLA4bit IS
   PORT( 
      Cin  : IN     std_logic;
      a0   : IN     std_logic;
      a1   : IN     std_logic;
      a2   : IN     std_logic;
      a3   : IN     std_logic;
      b0   : IN     std_logic;
      b1   : IN     std_logic;
      b2   : IN     std_logic;
      b3   : IN     std_logic;
      Cout : OUT    std_logic;
      Gg   : OUT    std_logic;
      Pg   : OUT    std_logic;
      s0   : OUT    std_logic;
      s1   : OUT    std_logic;
      s2   : OUT    std_logic;
      s3   : OUT    std_logic
   );

-- Declarations

END CLA4bit ;

--
-- VHDL Architecture LAB3.CLA4bit.struct
--
-- Created:
--          by - kim705.ews (gelib-057-35.ews.illinois.edu)
--          at - 21:41:09 09/18/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.ALL;

LIBRARY LAB3;

ARCHITECTURE struct OF CLA4bit IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL C1 : std_logic;
   SIGNAL C2 : std_logic;
   SIGNAL C3 : std_logic;
   SIGNAL G0 : std_logic;
   SIGNAL G1 : std_logic;
   SIGNAL G2 : std_logic;
   SIGNAL G3 : std_logic;
   SIGNAL P0 : std_logic;
   SIGNAL P1 : std_logic;
   SIGNAL P2 : std_logic;
   SIGNAL P3 : std_logic;


   -- Component Declarations
   COMPONENT ANDgate
   PORT (
      X : IN     std_logic;
      Y : IN     std_logic;
      F : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT CLAlogic
   PORT (
      C0 : IN     std_logic ;
      G0 : IN     std_logic ;
      G1 : IN     std_logic ;
      G2 : IN     std_logic ;
      G3 : IN     std_logic ;
      P0 : IN     std_logic ;
      P1 : IN     std_logic ;
      P2 : IN     std_logic ;
      P3 : IN     std_logic ;
      C1 : OUT    std_logic ;
      C2 : OUT    std_logic ;
      C3 : OUT    std_logic ;
      C4 : OUT    std_logic ;
      Gg : OUT    std_logic ;
      Pg : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT FA
   PORT (
      a    : IN     std_logic ;
      b    : IN     std_logic ;
      cin  : IN     std_logic ;
      cout : OUT    std_logic ;
      s    : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT XORgate
   PORT (
      X : IN     std_logic;
      Y : IN     std_logic;
      F : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ANDgate USE ENTITY LAB3.ANDgate;
   FOR ALL : CLAlogic USE ENTITY LAB3.CLAlogic;
   FOR ALL : FA USE ENTITY LAB3.FA;
   FOR ALL : XORgate USE ENTITY LAB3.XORgate;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   I5 : ANDgate
      PORT MAP (
         X => a2,
         Y => b2,
         F => G2
      );
   I6 : ANDgate
      PORT MAP (
         X => a1,
         Y => b1,
         F => G1
      );
   I7 : ANDgate
      PORT MAP (
         X => a0,
         Y => b0,
         F => G0
      );
   I8 : ANDgate
      PORT MAP (
         X => a3,
         Y => b3,
         F => G3
      );
   I4 : CLAlogic
      PORT MAP (
         C0 => Cin,
         G0 => G0,
         G1 => G1,
         G2 => G2,
         G3 => G3,
         P0 => P0,
         P1 => P1,
         P2 => P2,
         P3 => P3,
         C1 => C1,
         C2 => C2,
         C3 => C3,
         C4 => Cout,
         Gg => Gg,
         Pg => Pg
      );
   I0 : FA
      PORT MAP (
         A    => a3,
         B    => b3,
         Cin  => C3,
         Cout => OPEN,
         S    => s3
      );
   I1 : FA
      PORT MAP (
         A    => a2,
         B    => b2,
         Cin  => C2,
         Cout => OPEN,
         S    => s2
      );
   I2 : FA
      PORT MAP (
         A    => a1,
         B    => b1,
         Cin  => C1,
         Cout => OPEN,
         S    => s1
      );
   I3 : FA
      PORT MAP (
         A    => a0,
         B    => b0,
         Cin  => Cin,
         Cout => OPEN,
         S    => s0
      );
   I10 : XORgate
      PORT MAP (
         X => a2,
         Y => b2,
         F => P2
      );
   I11 : XORgate
      PORT MAP (
         X => a1,
         Y => b1,
         F => P1
      );
   I12 : XORgate
      PORT MAP (
         X => a0,
         Y => b0,
         F => P0
      );
   I13 : XORgate
      PORT MAP (
         X => a3,
         Y => b3,
         F => P3
      );

END struct;
