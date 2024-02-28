package body ShareData is

   protected body MinValueInfo is
      procedure UpdateMinVal(val: Integer; idx: Integer) is
      begin
         minVal := val;
         minValIdx := idx;
      end UpdateMinVal;
      procedure incrementTasksComplete is
      begin
         tasksCompleted := tasksCompleted + 1;
      end incrementTasksComplete;
      
      function getMinVal return Integer is
      begin
         return minVal;
      end getMinVal;
      
      function getMinValIdx return Integer is
      begin
         return minValIdx;
      end getMinValIdx;
      
      function getTasksCompleted return Integer is
      begin
         return tasksCompleted;
      end getTasksCompleted;
   end MinValueInfo;

end ShareData;
