--Questăo 01
SELECT
ProductSubcategoryName,
DimProductSubcategory.ProductSubcategoryKey
FROM DimProductSubcategory
INNER JOIN DimProduct 
ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey

--Questăo 02
SELECT
ProductCategoryName,
DimProductCategory.ProductCategoryKey
FROM DimProductCategory
LEFT JOIN DimProductSubcategory
ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey

--Questăo 03
SELECT
StoreKey,
StoreName,
EmployeeCount,
DimGeography.ContinentName,
DimGeography.RegionCountryName
--DimStore.GeographyKey
FROM DimStore
LEFT JOIN DimGeography
ON Dimstore.GeographyKey = DimGeography.GeographyKey

--Questăo 04
SELECT
ProductKey,
ProductName,
DimProductCategory.ProductCategoryDescription,
DimProductSubcategory.ProductCategoryKey,
DimProduct.ProductSubcategoryKey
FROM DimProduct
LEFT JOIN DimProductSubcategory
ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
LEFT JOIN DimProductCategory
ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey

--Questão 05
--A
SELECT TOP(100)*
FROM FactStrategyPlan

--B
SELECT
StrategyPlanKey,
DateKey,
DimAccount.AccountName,
Amount
FROM FactStrategyPlan
INNER JOIN DimAccount
ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

--Questão 06
SELECT
StrategyPlanKey,
DateKey,
DimScenario.ScenarioName,
Amount
FROM FactStrategyPlan
INNER JOIN DimScenario
ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey

--Questão 07
SELECT
ProductSubcategoryName,
DimProduct.ProductSubcategoryKey
FROM DimProductSubcategory
LEFT JOIN DimProduct
ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
WHERE DimProduct.ProductSubcategoryKey IS NULL;

--Questão 08
SELECT
BrandName,
DimChannel.ChannelName
FROM DimProduct
INNER JOIN FactSales
ON FactSales.ProductKey = DimProduct.Productkey
INNER JOIN DimChannel
ON DimChannel.ChannelKey = FactSales.ChannelKey

--Questão 09
SELECT 
OnlineSalesKey,
DateKey,
PromotionName,
SalesAmount	
FROM FactOnlineSales
INNER JOIN DimPromotion
ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC

--Questão 10
SELECT 
FactSales.SalesKey,
DimChannel.ChannelName,
DimStore.StoreName,
DimProduct.ProductName,
FactSales.SalesAmount
FROM FactSales
INNER JOIN DimChannel
ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY FactSales.SalesAmount DESC
