/*Дать доступ группе "Отдел ИСУ / Специалист" счету, в котором ответственный начальник ИСУ*/
insert into tbl_InvoiceRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Invoice.ID, 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0', 1, 0, 0, 0
from tbl_Invoice
where not exists (select ID from tbl_InvoiceRight where tbl_InvoiceRight.RecordID = tbl_Invoice.ID
and tbl_InvoiceRight.AdminUnitID = 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0') 
and (tbl_Invoice.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906') /*Живолун М.Г.*/