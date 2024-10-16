--1. Primeiro:
--(Produtos que n�o foram vendidos na loja online)
SELECT 
    ProductName, 
	SalesAmount
FROM 
    DimProduct 
LEFT JOIN 
    FactOnlineSales ON DimProduct.ProductKey = FactOnlineSales.ProductKey
WHERE 
    FactOnlineSales.SalesAmount IS NULL;

--2. Segundo:
--(Produtos que n�o est�o no invent�rio)
SELECT
	DimProduct.ProductName,
	FactInventory.ProductKey
FROM 
	DimProduct
LEFT JOIN 
	FactInventory 
ON 
	DimProduct.ProductKey = FactInventory.ProductKey
WHERE 
	FactInventory.ProductKey IS NULL;

--3. Terceiro
--(Continentes que n�o tem uma chave geogr�fica)
SELECT
ContinentName,
DimSalesTerritory.GeographyKey
FROM DimGeography
LEFT JOIN
DimSalesTerritory ON DimGeography.GeographyKey = DimSalesTerritory.GeographyKey
WHERE DimSalesTerritory.GeographyKey IS NULL;

--4. Quarto
--(Produtos que n�o tem uma subcategoria)
SELECT
ProductName,
DimProductSubcategory.ProductSubcategoryKey
FROM DimProduct
LEFT JOIN
DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE DimProductSubcategory.ProductSubcategoryKey IS NULL;