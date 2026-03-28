/*Дать доступ группе "Отдел ГАРАНТ / Семинары / Старший менеджер по семинарам" счету, в котором ответственный начальник Гаранта*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, 'ac53ff8a-7259-4031-85dd-86271dc50e3c', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = 'ac53ff8a-7259-4031-85dd-86271dc50e3c') 
and (tbl_Document.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/