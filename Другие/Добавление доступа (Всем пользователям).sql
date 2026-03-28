insert into tbl_OfferingRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Offering.ID, 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0', 1, 1, 0, 0
from tbl_Offering
where not exists (select ID from tbl_OfferingRight where tbl_OfferingRight.RecordID = tbl_Offering.ID
and tbl_OfferingRight.AdminUnitID = 'b21b9f31-2a1f-4e18-8522-cce7bbb5f5e0') 
and (tbl_Offering.OwnerID = '81b9a29e-cd9b-495e-8edf-7228e3a94906')