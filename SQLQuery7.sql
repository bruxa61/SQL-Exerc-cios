--QUEST�O 1
--SELECT * 
--FROM DimProduct
--A: N�mero de produtos continua 2.517

--SELECT *
--FROM DimCustomer
--B: A quantidade de clientes diminuiu, caindo para 18.869


--QUEST�O 2
--A
--SELECT CustomerKey, FirstName, EmailAddress, BirthDate
--FROM dimCustomer

--B
--SELECT
--CustomerKey AS 'Chave Cliente',
--FirstName AS Nome,
--EmailAddress AS Email,
--BirthDate AS Anivers�rio
--FROM dimCustomer

--QUEST�O 3
--A
--SELECT TOP(100) *
--FROM dimCustomer

--B
--SELECT TOP(20) PERCENT *
--FROM DimCustomer

--C
--SELECT TOP(100) FirstName, EmailAddress, BirthDate
--FROM dimCustomer

--D
--SELECT
--FirstName AS 'Primeiro Nome',
--EmailAddress AS 'E-mail',
--BirthDate AS Anivers�rio
--FROM dimCustomer

--QUEST�O 4
--SELECT Manufacturer
--FROM DimProduct

--SELECT 
--Manufacturer AS Fornecedor
--FROM DimProduct

--QUEST�O 5
--SELECT DISTINCT ProductName
--FROM DimProduct
--2.517

--SELECT DISTINCT ProductKey
--FROM FactSales
--2.516

--R: Um produto n�o foi vendido