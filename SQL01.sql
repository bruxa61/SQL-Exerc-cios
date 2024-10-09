--QUESTÃO 1
SELECT * 
FROM DimProduct
--A: Número de produtos continua 2.517

SELECT *
FROM DimCustomer
--B: A quantidade de clientes diminuiu, caindo para 18.869


--QUESTÃO 2
--A
SELECT CustomerKey, FirstName, EmailAddress, BirthDate
FROM dimCustomer

--B
SELECT
CustomerKey AS 'Chave Cliente',
FirstName AS Nome,
EmailAddress AS Email,
BirthDate AS Aniversário
FROM dimCustomer

--QUESTÃO 3
--A
SELECT TOP(100) *
FROM dimCustomer

--B
SELECT TOP(20) PERCENT *
FROM DimCustomer

--C
SELECT TOP(100) FirstName, EmailAddress, BirthDate
FROM dimCustomer

--D
SELECT
FirstName AS 'Primeiro Nome',
EmailAddress AS 'E-mail',
BirthDate AS Aniversário
FROM dimCustomer

--QUESTÃO 4
SELECT Manufacturer
FROM DimProduct

SELECT DISTINCT
Manufacturer AS Fornecedor
FROM DimProduct

--QUESTÃO 5
SELECT DISTINCT ProductName
FROM DimProduct
--2.517

SELECT DISTINCT ProductKey
FROM FactSales
--2.516

--R: Um produto não foi vendido
