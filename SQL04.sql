--QUEST�O 1
--A
SELECT 
channelkey,
SUM(SalesQuantity) AS 'Qtd. Vendida'
FROM FactSales
GROUP BY channelKey

--B
SELECT
StoreKey,
SUM(SalesQuantity) AS 'Qtd. Total Vendida',
SUM(ReturnQuantity) AS 'Qtd. Total Devolvida'
FROM FactSales
GROUP BY StoreKey

--C
SELECT
channelkey,
SUM(SalesQuantity) AS 'Qtd. Total Vendida'
FROM FactSales
WHERE YEAR(DateKey) = 2007
GROUP BY channelKey

--QUEST�O 2
--A
SELECT 
ProductKey,
SUM(SalesAmount) AS 'Qtd. Total Vendida'
FROM FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) > 5000000

--B
SELECT TOP(10) 
ProductKey,
SUM(SalesQuantity) AS 'Qtd. Total Vendida'
FROM FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC

--QUEST�O 3
--A
SELECT TOP(1)
CustomerKey,
SUM(SalesQuantity) AS 'Compras Online'
FROM FactOnlineSales
GROUP BY CustomerKey 
ORDER BY SUM(SalesQuantity) DESC
--R: ID 19037

--B
SELECT TOP(3)
ProductKey,
SUM(SalesQuantity) AS 'Compras Online'
FROM FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC

--QUEST�O 4
--A
SELECT
BrandName,
COUNT(ProductKey) AS 'Qtd. Total de Produtos'
FROM DimProduct
GROUP BY BrandName

--B
SELECT
ClassName,
AVG(UnitPrice) AS 'M�dia do Pre�o Unitario'
FROM DimProduct
GROUP BY ClassName

--C
SELECT
ColorName,
SUM(Weight) AS 'Peso Total do Produto'
FROM DimProduct
GROUP BY ColorName

--QUEST�O 5
SELECT
StockTypeName,
SUM(Weight) AS 'Peso Total'
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC

--QUEST�O 6
SELECT
BrandName,
COUNT(DISTINCT ColorName) AS 'Cor'
FROM DimProduct
GROUP BY BrandName

--QUEST�O 7
SELECT
Gender,
COUNT(CustomerKey) AS 'Total de Clientes',
AVG(YearlyIncome) AS 'M�dia Salarial'
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender

--QUEST�O 8
SELECT
Education AS 'Escolaridade',
COUNT(CustomerKey) AS 'Qtd. Total de Clientes',
AVG(YearlyIncome) AS 'M�dia Salarial'
FROM DimCustomer
GROUP BY Education

--QUESTA� 9
SELECT
DepartmentName AS 'Departamento',
COUNT(EmployeeKey) AS 'Qtd. Total de Funcion�rios'
FROM DimEmployee
WHERE Status IS NOT NULL
GROUP BY DepartmentName

--QUEST�O 10
SELECT
Title AS 'Cargo',
SUM(VacationHours) AS 'Total de Horas de F�rias'
FROM DimEmployee
WHERE Gender = 'F' AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '01/01/1999' AND '31/12/2000'
GROUP BY Title
