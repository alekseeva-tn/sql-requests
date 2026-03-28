UPDATE [dbo].[tbl_AccountAddress]
   SET 
      [AddressTypeID] = 'f1bc6c52-fa03-4b6a-8724-ae741ea84883'
 WHERE ([Address] is not NULL) AND ([AddressTypeID] is NULL)