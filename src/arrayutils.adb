package body ArrayUtils is

   function generateArray return ArrayValues is
      package Rand_Int is new ada.Numerics.Discrete_Random(Integer);
      use Rand_Int;
      
      values: ArrayValues;
      gen: Generator;
      gen2: Generator;
   begin
      Reset(gen);
      Reset(gen2);
      for i in ArrayValues'Range loop
         values(i) := Random(gen, 0, 1000);
      end loop;
      values(Random(gen2, ArrayValues'First, ArrayValues'Last)) := -1;
      
      return values; 
   end generateArray;

end ArrayUtils;
