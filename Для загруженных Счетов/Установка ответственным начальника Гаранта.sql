UPDATE [dbo].[tbl_Invoice]
   SET 
      [OwnerID] = '28af7fe4-f690-4c86-82f8-fe75f7df9268' /*Иванов А.А.*/
 WHERE ([OwnerID] = '251fb9ac-c17e-4df7-a0cb-d591fdb97462') /*Мыреева Т.Н., т.е. я произвела загрузку счетов*/
AND ([StoreID] = 'e6c66a10-bbc4-4e28-8309-4f2a318c0183') /*Гарант*/
