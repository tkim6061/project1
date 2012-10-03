-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration CLA4bit_config of CLA4bit is
   for struct
      for all : ANDgate
         use entity LAB3.ANDgate(untitled);
      end for;
      for all : CLAlogic
         use configuration LAB3.CLAlogic_config;
      end for;
      for all : FA
         use configuration LAB3.FA_config;
      end for;
      for all : XORgate
         use entity LAB3.XORgate(untitled);
      end for;
   end for;
end CLA4bit_config;
