/*Дать доступ группе "Отдел СТиСКЗИ / Специалист" счету, в котором ответственный начальник СТиЗИ*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, '356078c7-c7ea-4b28-8cf7-7774afa84f75', 1, 1, 0, 1
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = '356078c7-c7ea-4b28-8cf7-7774afa84f75') 
and (tbl_Contract.OwnerID = '2ef12eb4-06f4-426c-9534-26029bd3d03d') /*Ломакин А.С.*/