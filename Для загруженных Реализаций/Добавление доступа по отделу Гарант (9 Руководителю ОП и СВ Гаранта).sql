/*Дать доступ группе "Отдел ГАРАНТ / Руководитель обучения пользователей и сервисного выезда" счету, в котором ответственный начальник Гаранта*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, '29b86988-5bac-4e62-82e9-696b39c77e96', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = '29b86988-5bac-4e62-82e9-696b39c77e96') 
and (tbl_Document.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/