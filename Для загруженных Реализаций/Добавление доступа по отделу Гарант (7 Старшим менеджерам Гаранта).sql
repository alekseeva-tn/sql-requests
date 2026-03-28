/*Дать доступ группе "Отдел ГАРАНТ / Старший менеджер" счету, в котором ответственный начальник Гаранта*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, 'e8b78794-2d5d-46b8-b9b3-0934d34dd8a8', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = 'e8b78794-2d5d-46b8-b9b3-0934d34dd8a8') 
and (tbl_Document.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/