/*Дать доступ группе "Отдел ГАРАНТ / Менеджер" счету, в котором ответственный начальник Гаранта*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, 'ad57527e-6a94-4517-a920-137a597b84f7', 1, 0, 0, 0
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = 'ad57527e-6a94-4517-a920-137a597b84f7') 
and (tbl_Invoice.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/