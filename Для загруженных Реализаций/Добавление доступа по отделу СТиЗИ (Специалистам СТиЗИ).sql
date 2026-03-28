/*Дать доступ группе "Отдел СТиСКЗИ / Специалист" счету, в котором ответственный начальник СТиЗИ*/
insert into tbl_DocumentRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Document.ID, '356078c7-c7ea-4b28-8cf7-7774afa84f75', 1, 0, 0, 0
from tbl_Document
where not exists (select ID from tbl_DocumentRight where tbl_DocumentRight.RecordID = tbl_Document.ID
and tbl_DocumentRight.AdminUnitID = '356078c7-c7ea-4b28-8cf7-7774afa84f75') 
and (tbl_Document.OwnerID = '2ef12eb4-06f4-426c-9534-26029bd3d03d') /*Ломакин А.С.*/