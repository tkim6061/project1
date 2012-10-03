-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration Summing_Module_config of Summing_Module is
   for struct
      for all : FA
         use configuration LAB3.FA_config;
      end for;
   end for;
end Summing_Module_config;
