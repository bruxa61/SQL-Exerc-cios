--QUESTÃO 1
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

--QUESTÃO 2
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

--QUESTÃO 3
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

--QUESTÃO 4
--A
SELECT
BrandName,
COUNT(ProductKey) AS 'Qtd. Total de Produtos'
FROM DimProduct
GROUP BY BrandName

--B
SELECT
ClassName,
AVG(UnitPrice) AS 'Média do Preço Unitario'
FROM DimProduct
GROUP BY ClassName

--C
SELECT
ColorName,
SUM(Weight) AS 'Peso Total do Produto'
FROM DimProduct
GROUP BY ColorName

--QUESTÃO 5
SELECT
StockTypeName,
SUM(Weight) AS 'Peso Total'
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC

--QUESTÃO 6
SELECT
BrandName,
COUNT(DISTINCT ColorName) AS 'Cor'
FROM DimProduct
GROUP BY BrandName

--QUESTÃO 7
SELECT
Gender,
COUNT(CustomerKey) AS 'Total de Clientes',
AVG(YearlyIncome) AS 'Média Salarial'
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender

--QUESTÃO 8
SELECT
Education AS 'Escolaridade',
COUNT(CustomerKey) AS 'Qtd. Total de Clientes',
AVG(YearlyIncome) AS 'Média Salarial'
FROM DimCustomer
GROUP BY Education

--QUESTAÕ 9
SELECT
DepartmentName AS 'Departamento',
COUNT(EmployeeKey) AS 'Qtd. Total de Funcionários'
FROM DimEmployee
WHERE Status IS NOT NULL
GROUP BY DepartmentName

--QUESTÃO 10
SELECT
Title AS 'Cargo',
SUM(VacationHours) AS 'Total de Horas de Férias'
FROM DimEmployee
WHERE Gender = 'F' AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '01/01/1999' AND '31/12/2000'
GROUP BY Title
