--QUESTÃO 01
DECLARE 
@valor1 INT, 
@valor2 INT,
@valor3 FLOAT,
@valor4 FLOAT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7

SELECT @valor1 AS 'valor1'
SELECT @valor2 AS 'valor2'
SELECT @valor3 AS 'valor3'
SELECT @valor4 AS 'valor4'

--A
DECLARE @soma INT
SET @soma = @valor1 + @valor2
SELECT @soma AS 'Soma'

--B
DECLARE @subtracao INT 
SET @subtracao = @valor3 - @valor4 
SELECT @subtracao AS 'Subtração'

--C
DECLARE @multiplicacao INT
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao AS 'Multiplicação'

--D
DECLARE @divisao FLOAT
SET @divisao = @valor3 / @valor4
SELECT ROUND(@divisao, 2) AS 'Divisão'

--QUESTÃO 02
--A
DECLARE @produto VARCHAR(10)
SET @produto = 'Celular'

--B
DECLARE @quantidade INT
SET @quantidade = 12

--C
DECLARE @preco FLOAT
SET @preco = 9.99

--D
DECLARE @faturamento FLOAT
SET @faturamento = @quantidade * @preco

--E
SELECT
@produto AS 'Produto', 
@quantidade AS 'Quantidade',
@preco AS 'Preço',
@faturamento AS 'Faturamento'

--QUESTÃO 03
DECLARE 
@nome VARCHAR(100),
@data_nascimento DATETIME,
@num_pets INT,
@resultado VARCHAR(MAX)
SET @nome = 'André'
SET @data_nascimento = '10/02/1998'
SET @num_pets = 2

SELECT 'Meu nome é ' + @nome + ', nasci em ' + FORMAT(CAST(@data_nascimento AS DATETIME), 'dd/MM/yyyy') + ' e tenho ' + CAST(@num_pets AS VARCHAR) + ' pets.'

--QUESTÃO 04
DECLARE @nome_das_lojas VARCHAR(MAX)
SET @nome_das_lojas = (SELECT StoreName FROM DimStore WHERE CloseDate < '01/01/2009')

PRINT 'As lojas fechadas no ano de 2008 foram:' + @nome_das_lojas

SELECT
StoreName,
CloseDate
FROM DimStore
WHERE CloseDate < '01/01/2009'

--QUESTÃO 05
SELECT 
ProductSubcategoryKey,
ProductName
FROM DimProduct
WHERE ProductName = 'Lamps'

SELECT 
ProductSubcategoryKey,
ProductSubcategoryName
FROM DimProductSubcategory
WHERE ProductSubcategoryName = 'Lamps'