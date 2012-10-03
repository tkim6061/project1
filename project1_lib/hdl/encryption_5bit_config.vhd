-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library ece290_project1_lib;
configuration encryption_5bit_config of encryption_5bit is
   for struct
      for all : encryption
         use configuration ece290_project1_lib.encryption_config;
      end for;
   end for;
end encryption_5bit_config;
