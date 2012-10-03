-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library project1_lib;
configuration final_config of final is
   for struct
      for all : channel_selection
         use configuration project1_lib.channel_selection_config;
      end for;
      for all : receiver
         use configuration project1_lib.receiver_config;
      end for;
      for all : transmitter
         use configuration project1_lib.transmitter_config;
      end for;
   end for;
end final_config;
