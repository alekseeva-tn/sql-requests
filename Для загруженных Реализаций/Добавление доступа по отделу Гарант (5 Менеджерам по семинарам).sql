/*Дать доступ группе "Отдел ГАРАНТ / Семинары / Менеджер по семинарам" счету, в котором ответственный начальник Гаранта*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, 'df5d315c-b73f-4b64-b00b-6fc4a9b78858', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = 'df5d315c-b73f-4b64-b00b-6fc4a9b78858') 
and (tbl_Document.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/