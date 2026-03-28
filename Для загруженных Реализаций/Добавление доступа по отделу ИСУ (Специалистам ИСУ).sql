/*Дать доступ группе "Отдел ИСУ / Специалист" счету, в котором ответственный начальник ИСУ*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0') 
and (tbl_Document.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906') /*Живолун М.Г.*/