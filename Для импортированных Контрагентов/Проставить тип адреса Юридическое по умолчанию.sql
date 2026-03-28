UPDATE [dbo].[tbl_Account]
   SET 
      [AddressTypeID] = 'f1bc6c52-fa03-4b6a-8724-ae741ea84883'
 WHERE ([CityID] is not NULL) AND ([AddressTypeID] is NULL)