-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library project1_lib;
configuration receiver_config of receiver is
   for struct
      for all : Corrector
         use configuration project1_lib.Corrector_config;
      end for;
      for all : ORgate5
         use entity project1_lib.ORgate5(untitled);
      end for;
      for all : Summing_Module
         use configuration project1_lib.Summing_Module_config;
      end for;
      for all : descrambler
         use configuration project1_lib.descrambler_config;
      end for;
      for all : unlock
         use configuration project1_lib.unlock_config;
      end for;
   end for;
end receiver_config;
