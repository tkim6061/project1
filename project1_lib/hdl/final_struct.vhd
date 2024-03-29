-- VHDL Entity project1_lib.final.symbol
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 23:26:48 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY final IS
   PORT( 
      S     : IN     std_logic_vector (1 DOWNTO 0);
      a     : IN     std_logic;
      b     : IN     std_logic;
      c     : IN     std_logic;
      d     : IN     std_logic;
      x0    : IN     std_logic;
      x1    : IN     std_logic;
      x10   : IN     std_logic;
      x11   : IN     std_logic;
      x12   : IN     std_logic;
      x13   : IN     std_logic;
      x14   : IN     std_logic;
      x15   : IN     std_logic;
      x16   : IN     std_logic;
      x17   : IN     std_logic;
      x18   : IN     std_logic;
      x19   : IN     std_logic;
      x2    : IN     std_logic;
      x3    : IN     std_logic;
      x4    : IN     std_logic;
      x5    : IN     std_logic;
      x6    : IN     std_logic;
      x7    : IN     std_logic;
      x8    : IN     std_logic;
      x9    : IN     std_logic;
      ce    : OUT    std_logic;
      dbus4 : OUT    std_logic_vector (4 DOWNTO 0);
      ie    : OUT    std_logic
   );

-- Declarations

END final ;

--
-- VHDL Architecture project1_lib.final.struct
--
-- Created:
--          by - kim705.ews (evrt-252-23.ews.illinois.edu)
--          at - 23:26:49 10/01/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF final IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ch_out : std_logic_vector(19 DOWNTO 0);
   SIGNAL dbus0  : std_logic_vector(19 DOWNTO 0);
   SIGNAL dbus1  : std_logic_vector(19 DOWNTO 0);
   SIGNAL dbus2  : std_logic_vector(19 DOWNTO 0);
   SIGNAL dbus3  : std_logic_vector(19 DOWNTO 0);


   -- Component Declarations
   COMPONENT channel_selection
   PORT (
      S      : IN     std_logic_vector (1 DOWNTO 0);
      ch1    : IN     std_logic_vector (19 DOWNTO 0);
      ch2    : IN     std_logic_vector (19 DOWNTO 0);
      ch3    : IN     std_logic_vector (19 DOWNTO 0);
      ch4    : IN     std_logic_vector (19 DOWNTO 0);
      ch_out : OUT    std_logic_vector (19 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT receiver
   PORT (
      a     : IN     std_logic ;
      b     : IN     std_logic ;
      c     : IN     std_logic ;
      d     : IN     std_logic ;
      d0    : IN     std_logic_vector (19 DOWNTO 0);
      ce    : OUT    std_logic ;
      dbus1 : OUT    std_logic_vector (4 DOWNTO 0);
      ie    : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT transmitter
   PORT (
      a     : IN     std_logic ;
      b     : IN     std_logic ;
      c     : IN     std_logic ;
      d     : IN     std_logic ;
      x0    : IN     std_logic ;
      x1    : IN     std_logic ;
      x2    : IN     std_logic ;
      x3    : IN     std_logic ;
      x4    : IN     std_logic ;
      dbus0 : OUT    std_logic_vector (19 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : channel_selection USE ENTITY project1_lib.channel_selection;
   FOR ALL : receiver USE ENTITY project1_lib.receiver;
   FOR ALL : transmitter USE ENTITY project1_lib.transmitter;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_4 : channel_selection
      PORT MAP (
         S      => S,
         ch1    => dbus3,
         ch2    => dbus2,
         ch3    => dbus1,
         ch4    => dbus0,
         ch_out => ch_out
      );
   U_5 : receiver
      PORT MAP (
         a     => a,
         b     => b,
         c     => c,
         d     => d,
         d0    => ch_out,
         ce    => ce,
         dbus1 => OPEN,
         ie    => ie
      );
   U_0 : transmitter
      PORT MAP (
         a     => a,
         b     => b,
         c     => c,
         d     => d,
         x0    => x0,
         x1    => x1,
         x2    => x2,
         x3    => x3,
         x4    => x4,
         dbus0 => dbus0
      );
   U_1 : transmitter
      PORT MAP (
         a     => a,
         b     => b,
         c     => c,
         d     => d,
         x0    => x5,
         x1    => x6,
         x2    => x7,
         x3    => x8,
         x4    => x9,
         dbus0 => dbus1
      );
   U_2 : transmitter
      PORT MAP (
         a     => a,
         b     => b,
         c     => c,
         d     => d,
         x0    => x10,
         x1    => x11,
         x2    => x12,
         x3    => x13,
         x4    => x14,
         dbus0 => dbus2
      );
   U_3 : transmitter
      PORT MAP (
         a     => a,
         b     => b,
         c     => c,
         d     => d,
         x0    => x15,
         x1    => x16,
         x2    => x17,
         x3    => x18,
         x4    => x19,
         dbus0 => dbus3
      );

END struct;
