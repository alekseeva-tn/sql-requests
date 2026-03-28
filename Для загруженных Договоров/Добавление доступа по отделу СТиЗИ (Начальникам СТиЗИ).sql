/*Дать доступ группе "Отдел СТиСКЗИ / Начальник отдела" счету, в котором ответственный начальник СТиЗИ*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, '0b3b4f7a-af41-405e-ac13-3d57fda24cdb', 1, 1, 0, 1
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = '0b3b4f7a-af41-405e-ac13-3d57fda24cdb') 
and (tbl_Contract.OwnerID = '2ef12eb4-06f4-426c-9534-26029bd3d03d') /*Ломакин А.С.*/