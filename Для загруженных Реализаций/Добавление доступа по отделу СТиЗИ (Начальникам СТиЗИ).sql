/*Дать доступ группе "Отдел СТиСКЗИ / Начальник отдела" счету, в котором ответственный начальник СТиЗИ*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, '0b3b4f7a-af41-405e-ac13-3d57fda24cdb', 1, 1, 0, 1
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = '0b3b4f7a-af41-405e-ac13-3d57fda24cdb') 
and (tbl_Document.OwnerID = '2ef12eb4-06f4-426c-9534-26029bd3d03d') /*Ломакин А.С.*/