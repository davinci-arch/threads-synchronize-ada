package ShareData is

   protected MinValueInfo is
      procedure UpdateMinVal(val: Integer; idx: Integer);
      procedure incrementTasksComplete;
      function getMinVal return Integer;
      function getMinValIdx return Integer;
      function getTasksCompleted return Integer;
   private
      minVal: Integer;
      minValIdx: Integer;
      tasksCompleted: Integer;
   end MinValueInfo;

end ShareData;
