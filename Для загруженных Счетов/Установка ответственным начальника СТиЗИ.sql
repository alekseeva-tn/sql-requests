UPDATE [dbo].[tbl_Invoice]
   SET 
      [OwnerID] = '2ef12eb4-06f4-426c-9534-26029bd3d03d' /*Ломакин А.С.*/
 WHERE ([OwnerID] = '251fb9ac-c17e-4df7-a0cb-d591fdb97462') /*Мыреева Т.Н., т.е. я произвела загрузку счетов*/
AND (([StoreID] = 'a9aa3fc8-0345-46fb-9250-7625d59bc3e3') OR ([StoreID] = '8548cfd0-e96e-46d2-84b6-f685f67d6f53')) /*СЗИ или Антивирусы*/