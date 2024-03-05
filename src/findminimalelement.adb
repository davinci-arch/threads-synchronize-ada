package body FindMinimalElement is

   task body FindMinimal is
      idCopy: Integer;
      localMinValue: Integer := Integer'Last;
      localIdx: Integer;
      elementsCopy: ArrayValues;
      startIdxCopy, endIdxCopy: Integer;
   begin
      loop
         select
            accept Start(id: Integer; Elements: ArrayValues; StartIdx, EndIdx: Integer) do
               idCopy := id;
               elementsCopy := Elements;
               startIdxCopy := StartIdx;
               endIdxCopy := EndIdx;
            end Start;
         or
            delay(1.0);
            exit;
         end select;
      end loop;
      for i in startIdxCopy .. endIdxCopy loop
         if (elementsCopy(i) < localMinValue) then
            localMinValue := elementsCopy(i);
            localIdx := i;
         end if;
      end loop;
      Put_Line("Id:[" & idCopy'img & "] Local minimum:["
               & localMinValue'img & "] local idx:[" & localIdx'img & "]"
               & " startIdx:" & startIdxCopy'img & " endIdx:" & endIdxCopy'img);
      MinValueInfo.incrementTasksComplete;
      MinValueInfo.UpdateMinVal(localMinValue, localIdx);
   end FindMinimal;

end FindMinimalElement;
