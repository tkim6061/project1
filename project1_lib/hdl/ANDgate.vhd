-- hds header_start
--
-- VHDL Architecture ECE290_GATES.ANDgate.untitled
--
-- Created:
--          by - mrmcclai.stdt (glsn22.ews.uiuc.edu)
--          at - 18:07:51 06/22/04
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2001.5 (Build 170)
--
-- hds header_end
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;

ENTITY ANDgate IS
   PORT( 
      X : IN     std_logic;
      Y : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END ANDgate ;

-- hds interface_end
ARCHITECTURE untitled OF ANDgate IS
BEGIN
  F <= X and Y after 0 ns;
END untitled;
