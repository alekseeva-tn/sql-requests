/*Дать доступ группе "Отдел ИСУ / Начальник отдела" счету, в котором ответственный начальник ИСУ*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, '37e76932-0871-4dc0-be4c-c42a617a8a2b', 1, 1, 0, 1
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = '37e76932-0871-4dc0-be4c-c42a617a8a2b') 
and (tbl_Document.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906') /*Живолун М.Г.*/