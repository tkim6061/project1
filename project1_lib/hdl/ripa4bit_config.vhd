-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration ripa4bit_config of ripa4bit is
   for struct
      for all : FA
         use configuration LAB3.full_adder_config;
      end for;
   end for;
end ripa4bit_config;
