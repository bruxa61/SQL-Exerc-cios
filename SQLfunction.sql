--Calcula o total de vendas

CREATE FUNCTION dbo.fn_TotalVendasProduto (@produtoId INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @totalVendas DECIMAL(18, 2);
   
    SELECT @totalVendas = SUM(SalesQuantity)
    FROM FactSales
    WHERE ProductKey = @produtoId;

    RETURN @totalVendas;
END


SELECT TOP(10)
    ProductName,
    dbo.fn_TotalVendasProduto(ProductKey) AS TotalVendas
FROM
    DimProduct ProductKey;

--Descobre o nome do cliente pelo seu ID

CREATE FUNCTION dbo.fn_NomeCliente (@clienteId INT)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @nomeCliente VARCHAR(100);
   
    SELECT @nomeCliente = CONCAT(FirstName, ' ', LastName)
    FROM DimCustomer
    WHERE CustomerKey = @clienteId;

    RETURN @nomeCliente;
END


SELECT
    c.CustomerKey,
    dbo.fn_NomeCliente(c.CustomerKey) AS NomeCompleto
FROM
    DimCustomer c
WHERE  
    c.CustomerKey = 987

