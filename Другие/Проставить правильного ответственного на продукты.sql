UPDATE tbl_Offering
      SET OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268' 
      WHERE ID IN
		(SELECT OIG.OfferingID
		FROM tbl_OfferingInGroup OIG
		WHERE OIG.OfferingID = ID
		AND OIG.GroupID = '070a04cf-f6d5-4da6-93b6-6bc837d1f7f9')