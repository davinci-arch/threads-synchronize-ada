package ShareData is

   protected MinValueInfo is
      procedure UpdateMinVal(val: Integer; idx: Integer);
      procedure incrementTasksComplete;
      entry await(minElem : out Integer; minElemIdx : out Integer);
      procedure setAmountOfThreads(amountOfThreads: Integer);
   private
      minVal: Integer;
      minValIdx: Integer;
      tasksCompleted: Integer;
      amountOfThreads: Integer;
   end MinValueInfo;

end ShareData;
