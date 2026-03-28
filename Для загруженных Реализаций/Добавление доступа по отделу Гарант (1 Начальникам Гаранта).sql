/*Дать доступ группе "Отдел ГАРАНТ / Начальник отдела" счету, в котором ответственный начальник Гаранта*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, '8b09b313-d546-4800-bdd9-e8f033b60046', 1, 1, 0, 1
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = '8b09b313-d546-4800-bdd9-e8f033b60046') 
and (tbl_Document.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/