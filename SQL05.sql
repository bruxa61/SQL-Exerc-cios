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
SELECT TOP(1000)*
FROM FactStrategyPlan

--B
