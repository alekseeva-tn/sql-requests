/*Дать доступ группе "Отдел ИСУ / Начальник отдела" счету, в котором ответственный начальник ИСУ*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, '37e76932-0871-4dc0-be4c-c42a617a8a2b', 1, 1, 0, 1
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = '37e76932-0871-4dc0-be4c-c42a617a8a2b') 
and (tbl_Contract.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906') /*Живолун М.Г.*/