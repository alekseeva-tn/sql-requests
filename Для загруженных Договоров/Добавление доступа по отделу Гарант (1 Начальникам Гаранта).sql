/*Дать доступ группе "Отдел ГАРАНТ / Начальник отдела" счету, в котором ответственный начальник Гаранта*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, '8b09b313-d546-4800-bdd9-e8f033b60046', 1, 1, 0, 1
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = '8b09b313-d546-4800-bdd9-e8f033b60046') 
and (tbl_Contract.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/