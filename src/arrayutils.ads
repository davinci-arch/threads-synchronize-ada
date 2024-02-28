with ArrayPackage, Ada.Numerics.Discrete_Random, Ada.Text_IO;
use ArrayPackage, Ada.Text_IO;

package ArrayUtils is

   function generateArray return ArrayValues;
   procedure printArray(values: ArrayValues);
end ArrayUtils;
