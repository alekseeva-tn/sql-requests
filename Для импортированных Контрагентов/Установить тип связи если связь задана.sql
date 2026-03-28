UPDATE [dbo].[tbl_Account]
   SET 
      [Communication1TypeID] = 'dbcb6a43-d99f-45ae-9b41-037de595242e'
 WHERE ([Communication1] is not NULL) AND ([Communication1TypeID] = NULL)