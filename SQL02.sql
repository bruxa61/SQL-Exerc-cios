--QUESTÃO 1
--SELECT TOP (100)
--SalesAmount,
--FROM FactSales
--ORDER BY SalesAmount DESC

--QUESTÃO 2
--SELECT TOP (10)
--ProductName,
--Weight,
--StyleID,
--UnitPrice
--FROM DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, StyleID DESC

--QUESTÃO 3
--A
--SELECT
--ProductName,
--Weight
--FROM DimProduct
--WHERE Weight > 100

--B
--SELECT
--ProductName AS 'Nome do Produto',
--Weight AS Peso
--FROM DimProduct

--C
--SELECT
--ProductName,
--Weight
--FROM DimProduct
--WHERE Weight > 100
--ORDER BY Weight DESC

--QUESTÃO 4
--A
--SELECT 
--StoreName, 
--OpenDate, 
--EmployeeCount
--FROM DimStore
--R: 306 Lojas.

--B
--SELECT 
--StoreName AS 'Nome da Loja', 
--OpenDate AS 'Data de Abertura', 
--EmployeeCount AS 'Quantidade de Funcionários'
--FROM DimStore

--C
--SELECT 
--StoreName,
--Status
--FROM DimStore
--WHERE Status LIKE 'ON'
----R: 294 Lojas ativas.

--QUESTÃO 5
--SELECT 
--BrandName,
--AvailableForSaleDate,
--ProductKey
--FROM DimProduct
--WHERE BrandName = 'Litware' AND AvailableForSaleDate = '15/03/2009'

--QUESTÃO 6
--A
--SELECT
--StoreName,
--Status
--FROM DimStore
--WHERE Status LIKE 'OFF'

--B
--SELECT 
--StoreName,
--CloseDate
--FROM DimStore
--Where CloseDate IS NOT NULL

--QUESTÃO 7
--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount BETWEEN 1 AND 20
--R:75 Lojas receberão 1 máquina de café

--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount BETWEEN 21 AND 50
--R:187 Lojas receberão 2 máquinas de café

--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount > 51
--R:43 Lojas receberão 3 máquinas de café

--QUESTÃO 8
--SELECT 
--ProductName,
--ProductKey,
--UnitPrice
--FROM DimProduct
--WHERE ProductName LIKE '%LCD%'

--QUESTÃO 9
--SELECT
--ProductName,
--ColorName,
--BrandName
--FROM DimProduct
--WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')

--QUESTÃO 10
--SELECT 
--ProductName,
--BrandName,
--ColorName,
--UnitPrice
--FROM DimProduct
--WHERE BrandName = 'Contoso' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
