-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
library LAB3;
configuration CLAlogic_config of CLAlogic is
   for struct
      for all : ANDgate
         use entity LAB3.ANDgate(untitled);
      end for;
      for all : ANDgate3
         use entity LAB3.ANDgate3(untitled);
      end for;
      for all : ANDgate4
         use entity LAB3.ANDgate4(untitled);
      end for;
      for all : ANDgate5
         use entity LAB3.ANDgate5(untitled);
      end for;
      for all : ORgate
         use entity LAB3.ORgate(untitled);
      end for;
      for all : ORgate3
         use entity LAB3.ORgate3(untitled);
      end for;
      for all : ORgate4
         use entity LAB3.ORgate4(untitled);
      end for;
      for all : ORgate5
         use entity LAB3.ORgate5(untitled);
      end for;
   end for;
end CLAlogic_config;
