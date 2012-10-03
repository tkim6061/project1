-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library project1_lib;
configuration transmitter_config of transmitter is
   for struct
      for all : encryption
         use configuration project1_lib.encryption_config;
      end for;
      for all : scrambler
         use configuration project1_lib.scrambler_config;
      end for;
   end for;
end transmitter_config;
