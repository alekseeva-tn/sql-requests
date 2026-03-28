UPDATE [dbo].[tbl_Invoice]
   SET 
      [OwnerID] = '81b9a29e-cd9b-495e-8edf-7228e3a94906' /*Живолун М.Г.*/
 WHERE ([OwnerID] = '251fb9ac-c17e-4df7-a0cb-d591fdb97462') /*Мыреева Т.Н., т.е. я произвела загрузку счетов*/
AND ([StoreID] = 'ea29b5a9-cecb-4197-873b-444dd2dfb563') /*СЭД*/