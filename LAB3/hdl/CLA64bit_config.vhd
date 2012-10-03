-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration CLA64bit_config of CLA64bit is
   for struct
      for all : CLA16bit
         use configuration LAB3.CLA16bit_config;
      end for;
      for all : CLAlogic
         use configuration LAB3.CLAlogic_config;
      end for;
   end for;
end CLA64bit_config;
