--Продукту в Документе проставить Валюту = Рубль, если валюта не указана
UPDATE [dbo].[tbl_OfferingInDocument]
   SET 
      [CurrencyID] = 'cc997518-b672-4f0b-ad9b-0668f06ae404'
 WHERE [CurrencyID] is NULL