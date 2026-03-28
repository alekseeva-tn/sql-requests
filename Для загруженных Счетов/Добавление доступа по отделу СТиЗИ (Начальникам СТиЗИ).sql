/*Дать доступ группе "Отдел СТиСКЗИ / Начальник отдела" счету, в котором ответственный начальник СТиЗИ*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, '0b3b4f7a-af41-405e-ac13-3d57fda24cdb', 1, 1, 0, 1
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = '0b3b4f7a-af41-405e-ac13-3d57fda24cdb') 
and (tbl_Invoice.OwnerID = '2ef12eb4-06f4-426c-9534-26029bd3d03d') /*Ломакин А.С.*/