-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration full_adder_config of FA is
   for struct
      for all : ANDgate
         use entity LAB3.ANDgate(untitled);
      end for;
      for all : ORgate
         use entity LAB3.ORgate(untitled);
      end for;
      for all : XORgate
         use entity LAB3.XORgate(untitled);
      end for;
   end for;
end full_adder_config;
