--QUEST�O 1
SELECT
SUM(SalesQuantity) AS 'Qtd. Vendida'
FROM FactSales

SELECT
SUM(ReturnQuantity) AS 'Qtd. Devolvida'
FROM FactSales

--QUEST�O 2
SELECT
AVG(YearlyIncome) AS 'M�dia Salarial'
FROM DimCustomer
WHERE Occupation = 'Professional'

--QUEST�O 3
--A
SELECT
MAX(EmployeeCount) AS 'Max. de Funcion�rios'
FROM DimStore

--B
SELECT
StoreName
FROM DimStore
WHERE EmployeeCount = '325'
--R: Contoso North America Online Store

--C
SELECT
MIN(EmployeeCount) AS 'Min. de Funcion�rios'
FROM DimStore

--D
SELECT
StoreName
FROM DimStore
WHERE EmployeeCount = '7'
--R: Contoso Europe Online Store

--QUEST�O 4
--A
SELECT
COUNT(EmployeeKey) AS 'Qtd. Mulheres'
FROM DimEmployee
WHERE Gender = 'F'
--R: 87

SELECT
COUNT(EmployeeKey) AS 'Qtd. Homens'
FROM DimEmployee
WHERE Gender = 'M'
--R: 206

--B
SELECT
MIN(HireDate) AS 'Qtd. Homens'
FROM DimEmployee
WHERE Gender = 'M'
-- DATA: 1996-07-31

SELECT
FirstName,
EmailAddress,
HireDate
FROM DimEmployee
WHERE HireDate = '1996-07-31'

SELECT
MIN(HireDate) AS 'Qtd. Mulheres'
FROM DimEmployee
WHERE Gender = 'F'
--DATA: 1998-01-26

SELECT
FirstName,
EmailAddress,
HireDate
FROM DimEmployee
WHERE HireDate = '1998-01-26'


--QUEST�O 5
--A
SELECT
COUNT(DISTINCT ColorName) AS 'Qtd. de Cores'
FROM DimProduct

--B
SELECT
COUNT(DISTINCT BrandName) AS 'Qtd. de Marcas'
FROM DimProduct

--C
SELECT
COUNT(DISTINCT ClassName) AS 'Qtd. de Classes de Produtos'
FROM DimProduct
