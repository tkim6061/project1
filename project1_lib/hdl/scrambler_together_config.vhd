-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library ece290_project1_lib;
configuration scrambler_together_config of scrambler_together is
   for struct
      for all : scrambler
         use configuration ece290_project1_lib.scrambler_config;
      end for;
   end for;
end scrambler_together_config;
