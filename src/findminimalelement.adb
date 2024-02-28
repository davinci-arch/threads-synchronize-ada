package body FindMinimalElement is

   task body FindMinimal is
      localMinValue: Integer := Integer'Last;
      localIdx: Integer;
   begin
      accept Start(Elements: ArrayValues; StartIdx, EndIdx: Integer) do

         for i in StartIdx .. EndIdx loop
            if (Elements(i) < localMinValue) then
               localMinValue := Elements(i);
               localIdx := i;
            end if;
         end loop;
         Put_Line("Local minimum: " & localMinValue'img);
         Put_Line("Local idx: " & localIdx'img);
      end Start;

   end FindMinimal;

end FindMinimalElement;
