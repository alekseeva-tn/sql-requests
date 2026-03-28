/*Дать доступ группе "Отдел ГАРАНТ / Старший менеджер" счету, в котором ответственный начальник Гаранта*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, 'e8b78794-2d5d-46b8-b9b3-0934d34dd8a8', 1, 0, 0, 0
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = 'e8b78794-2d5d-46b8-b9b3-0934d34dd8a8') 
and (tbl_Invoice.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/