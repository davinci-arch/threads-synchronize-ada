with Ada.Text_IO, ArrayPackage;
use Ada.Text_IO, ArrayPackage;

package FindMinimalElement is
   
   task type FindMinimal is
      entry Start(Elements: ArrayValues; StartIdx, EndIdx: Integer);
   end FindMinimal;
   
end FindMinimalElement;
