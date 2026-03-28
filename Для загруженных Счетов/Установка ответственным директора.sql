UPDATE [dbo].[tbl_Invoice]
   SET 
      [OwnerID] = '82955223-26e0-4875-90bb-a724c069cebd' /*Романов Н.Г.*/
 WHERE ([OwnerID] = '251fb9ac-c17e-4df7-a0cb-d591fdb97462') /*Мыреева Т.Н., т.е. я произвела загрузку счетов*/
AND (([StoreID] = '021a8096-5eb8-4e26-b385-d24cbf80b920') OR ([StoreID] is null)) /*АУП или пустой склад*/