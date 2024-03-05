package body ShareData is

   protected body MinValueInfo is
      procedure UpdateMinVal(val: Integer; idx: Integer) is
      begin
         if (minVal > val) then
            minVal := val;
            minValIdx := idx;
         end if;
      end UpdateMinVal;
      procedure incrementTasksComplete is
      begin
         tasksCompleted := tasksCompleted + 1;
      end incrementTasksComplete;
      
      procedure setAmountOfThreads(amountOfThreads: Integer) is
      begin
         ShareData.MinValueInfo.amountOfThreads := amountOfThreads;
      end setAmountOfThreads;
      
      entry await(minElem : out Integer; minElemIdx : out Integer) when tasksCompleted = amountOfThreads is
      begin
         minElem := minVal;
         minElemIdx := minValIdx;
      end await;
   end MinValueInfo;

end ShareData;
