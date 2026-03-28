/*Дать доступ группе "Отдел ГАРАНТ / Менеджер по продажам" счету, в котором ответственный начальник Гаранта*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, '8a792dbe-15eb-4ce1-b3ba-92e2d167ee26', 1, 0, 0, 0
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = '8a792dbe-15eb-4ce1-b3ba-92e2d167ee26') 
and (tbl_Invoice.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/