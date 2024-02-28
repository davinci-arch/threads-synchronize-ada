with Ada.Text_IO, Ada.Integer_Text_IO, FindMinimalElement, ArrayPackage, ArrayUtils;
use Ada.Text_IO, Ada.Integer_Text_IO, FindMinimalElement, ArrayPackage, ArrayUtils;




procedure Main is
   amountOfThreads: Integer;
   values: ArrayValues;
   type Threads is array (Integer range <>) of FindMinimal;
begin
   Put("Write amount of threads: ");
   Get(amountOfThreads);
   values := generateArray;

   declare
      threadsArr: Threads (1 .. amountOfThreads+1);
      idx: Integer := 1;
      part: Integer;
   begin
      --threadsArr(1).Start(values, values'First, 10);
      part := values'Length / threadsArr'Length;
      for i in 1 .. amountOfThreads loop
         threadsArr(i).Start(values, idx, idx + part);
         idx := idx + part;

         if (i = threadsArr'last) then
            threadsArr(i).Start(values, idx, values'Length);
        end if;
      end loop;


   end;



end Main;


