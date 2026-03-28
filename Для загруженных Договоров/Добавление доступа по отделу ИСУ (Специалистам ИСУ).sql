/*Дать доступ группе "Отдел ИСУ / Специалист" счету, в котором ответственный начальник ИСУ*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0', 1, 1, 0, 1
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0') 
and (tbl_Contract.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906') /*Живолун М.Г.*/