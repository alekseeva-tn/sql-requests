/*Дать доступ группе "Отдел ГАРАНТ / Начальник службы сбыта и маркетинга" счету, в котором ответственный начальник Гаранта*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, 'f2babd21-4919-43ce-9674-caa135008b5b', 1, 0, 0, 0
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = 'f2babd21-4919-43ce-9674-caa135008b5b') 
and (tbl_Invoice.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/