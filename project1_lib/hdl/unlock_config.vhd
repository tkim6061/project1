-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration unlock_config of unlock is
   for struct
      for all : XORgate
         use entity LAB3.XORgate(untitled);
      end for;
   end for;
end unlock_config;
