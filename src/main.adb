with Ada.Text_IO, Ada.Integer_Text_IO, FindMinimalElement, ArrayPackage, ArrayUtils,
ShareData;
use Ada.Text_IO, Ada.Integer_Text_IO, FindMinimalElement, ArrayPackage, ArrayUtils,
ShareData;


procedure Main is
   amountOfThreads: Integer;
   values: ArrayValues;
   type Threads is array (Integer range <>) of FindMinimal;
   minElem : Integer;
   minElemIdx: Integer;
begin
   Put("Write amount of threads: ");
   Get(amountOfThreads);
   values := generateArray;
   MinValueInfo.setAmountOfThreads(amountOfThreads);
   declare
      threadsArr: Threads (1 .. amountOfThreads);
      idx: Integer := 1;
      part: Integer;
   begin
      part := values'Length / threadsArr'Length;
      for i in 1 .. amountOfThreads loop
         if (i = threadsArr'last) then
            threadsArr(i).Start(i, values, idx, values'Length);
            exit;
         end if;

         threadsArr(i).Start(i, values, idx, idx + part);
         idx := idx + part;
      end loop;
      MinValueInfo.await(minElem, minELemIdx);
      --printArray(values);
      --Put(Character'Val(10));
      Put_Line("Min val:" & minElem'img & " idx:[" & minELemIdx'img & "]");
   end;



end Main;


