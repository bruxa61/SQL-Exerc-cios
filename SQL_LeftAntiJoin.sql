--1. Primeiro:
--(Produtos que não foram vendidos na loja online)
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
--(Produtos que não estão no inventário)
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
--(Continentes que não tem uma chave geográfica)
SELECT
ContinentName,
DimSalesTerritory.GeographyKey
FROM DimGeography
LEFT JOIN
DimSalesTerritory ON DimGeography.GeographyKey = DimSalesTerritory.GeographyKey
WHERE DimSalesTerritory.GeographyKey IS NULL;

--4. Quarto
--(Produtos que não tem uma subcategoria)
SELECT
ProductSubcategoryName,
DimProduct.ProductSubcategoryKey
FROM DimProductSubcategory
LEFT JOIN DimProduct
ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
WHERE DimProduct.ProductSubcategoryKey IS NULL;
