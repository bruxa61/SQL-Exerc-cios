
---- Criando o banco de dados chamado LojaDB
--CREATE DATABASE LojaDB;

---- Usando o banco de dados LojaDB para as próximas operações
--USE LojaDB;
---- Criando a tabela Clientes que armazena os dados dos clientes
--CREATE TABLE Clientes (
--    ClienteID INT PRIMARY KEY,  -- ClienteID é a chave primária, ou seja, identifica unicamente cada cliente
--    NomeCliente VARCHAR(100),   -- Nome do cliente, armazenado como uma string de até 100 caracteres
--    Cidade VARCHAR(50)          -- Cidade onde o cliente mora, armazenado como uma string de até 50 caracteres
--);

---- Criando a tabela Pedidos que armazena os pedidos feitos pelos clientes
--CREATE TABLE Pedidos (
--    PedidoID INT PRIMARY KEY,   -- PedidoID é a chave primária, identificando unicamente cada pedido
--    ClienteID INT,              -- ClienteID é uma chave estrangeira, associando cada pedido a um cliente
--    DataPedido DATE,            -- Data do pedido, armazenada como um valor de data
--    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)  -- ClienteID é uma chave estrangeira que referencia a chave primária da tabela Clientes
--);



---- Criando a tabela Produtos que armazena os dados dos produtos disponíveis
--CREATE TABLE Produtos (
--    ProdutoID INT PRIMARY KEY,  -- ProdutoID é a chave primária, identificando unicamente cada produto
--    NomeProduto VARCHAR(100),   -- Nome do produto
--    CategoriaID INT,            -- CategoriaID é uma chave estrangeira que referencia a tabela Categorias
--    Preco DECIMAL(10, 2)        -- Preço do produto, com até 10 dígitos no total e 2 casas decimais
--);


---- Criando a tabela Categorias que armazena as categorias dos produtos
--CREATE TABLE Categorias (
--    CategoriaID INT PRIMARY KEY,  -- CategoriaID é a chave primária, identificando unicamente cada categoria
--    NomeCategoria VARCHAR(100)    -- Nome da categoria
--);


---- Inserindo clientes na tabela Clientes
--INSERT INTO Clientes (ClienteID, NomeCliente, Cidade) VALUES
--(1, 'Maria Silva', 'São Paulo'),  -- Cliente com ID 1
--(2, 'João Santos', 'Rio de Janeiro'),  -- Cliente com ID 2
--(3, 'Ana Costa', 'Belo Horizonte');  -- Cliente com ID 3


---- Inserindo pedidos na tabela Pedidos
--INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido) VALUES
--(1, 1, '2024-01-15'),  -- Pedido ID 1 feito pelo cliente com ID 1 (Maria Silva)
--(2, 2, '2024-01-20'),  -- Pedido ID 2 feito pelo cliente com ID 2 (João Santos)
--(3, 1, '2024-02-10');  -- Pedido ID 3 feito pelo cliente com ID 1 (Maria Silva)


---- Inserindo categorias na tabela Categorias
--INSERT INTO Categorias (CategoriaID, NomeCategoria) VALUES
--(1, 'Eletrônicos'),  -- Categoria com ID 1
--(2, 'Vestuário');    -- Categoria com ID 2


---- Inserindo produtos na tabela Produtos
--INSERT INTO Produtos (ProdutoID, NomeProduto, CategoriaID, Preco) VALUES
--(1, 'Celular', 1, 1500.00),     -- Produto Celular, pertence à categoria Eletrônicos
--(2, 'Televisão', 1, 3000.00),   -- Produto Televisão, pertence à categoria Eletrônicos
--(3, 'Camiseta', 2, 50.00);      -- Produto Camiseta, pertence à categoria Vestuário


---- Exibindo o nome dos clientes e as datas dos pedidos que eles fizeram
--SELECT Clientes.NomeCliente, Pedidos.DataPedido
--FROM Clientes
--INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;


---- Exibindo o nome dos clientes e as datas dos pedidos (se houver), incluindo clientes que ainda não fizeram pedidos
--SELECT Clientes.NomeCliente, Pedidos.DataPedido
--FROM Clientes
--LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;


---- Exibindo o nome dos clientes, as datas dos pedidos, os produtos comprados e suas categorias
--SELECT Clientes.NomeCliente, Pedidos.DataPedido, Produtos.NomeProduto, Categorias.NomeCategoria
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID
--INNER JOIN Produtos ON Produtos.ProdutoID = Pedidos.PedidoID
--INNER JOIN Categorias ON Produtos.CategoriaID = Categorias.CategoriaID;


---- Selecionando o nome dos clientes que estão na tabela Clientes
--SELECT NomeCliente FROM Clientes
--UNION
---- Selecionando o nome dos clientes que fizeram pedidos (ligados pelo ClienteID)
--SELECT Clientes.NomeCliente
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;


---- Selecionando o nome dos clientes que estão na tabela Clientes
--SELECT NomeCliente FROM Clientes
--UNION ALL
---- Selecionando o nome dos clientes que fizeram pedidos
--SELECT Clientes.NomeCliente
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;

--EXERCÍCIOS:
--QUESTÃO 01
SELECT
NomeCliente,
Pedidos.PedidoID,
Pedidos.DataPedido
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID

--QUESTÃO 02
SELECT
NomeCliente,
Pedidos.PedidoID,
Cidade
FROM Clientes
LEFT JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID

--QUESTÃO 03
SELECT
NomeCliente,
Cidade
FROM Clientes
UNION
SELECT 
Clientes.NomeCliente,
Clientes.Cidade
FROM Pedidos
INNER JOIN Clientes 
ON Pedidos.ClienteID = Clientes.ClienteID;

--QUESTÃO 04
SELECT 
COUNT(NomeCliente)
FROM Clientes
UNION ALL
SELECT 
COUNT(Clientes.NomeCliente)
FROM Pedidos
INNER JOIN Clientes 
ON Pedidos.ClienteID = Clientes.ClienteID


--QUESTÃO 05
-- Selecionando o banco de dados para uso
--USE LojaDB
--CREATE TABLE DetalhesPedidos (
--    DetalheID INT PRIMARY KEY IDENTITY(1,1),  -- Identificador único para cada linha
--    PedidoID INT,                             -- Relaciona com a tabela Pedidos
--    ProdutoID INT,                            -- Relaciona com a tabela Produtos
--    Quantidade INT,                           -- Quantidade de produtos no pedido
--    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),  -- Chave estrangeira para Pedidos
--    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID) -- Chave estrangeira para Produtos
--);


---- Inserindo detalhes dos pedidos
--INSERT INTO DetalhesPedidos (PedidoID, ProdutoID, Quantidade)
--VALUES
--(1, 1, 2),  -- Pedido 1 contém 2 unidades do Produto 1
--(1, 2, 1),  -- Pedido 1 contém 1 unidade do Produto 2
--(2, 3, 5),  -- Pedido 2 contém 5 unidades do Produto 3
--(3, 2, 2);  -- Pedido 3 contém 2 unidades do Produto 2

SELECT
NomeCliente,
Produtos.NomeProduto,
DetalhesPedidos.Quantidade,
Pedidos.DataPedido
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN DetalhesPedidos
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
INNER JOIN Produtos
ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
ORDER BY DataPedido DESC

--------------------------------------------------------------------------------------------------
--01
--SELECT Clientes.NomeCliente, COUNT(Pedidos.PedidoID) AS TotalPedidos
--FROM Clientes
--LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
--GROUP BY Clientes.NomeCliente;

--02
--SELECT Clientes.NomeCliente, SUM(DetalhesPedidos.Quantidade) AS TotalItens
--FROM Clientes
--INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
--INNER JOIN DetalhesPedidos ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--GROUP BY Clientes.NomeCliente;

--03
--SELECT Clientes.NomeCliente, SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS TotalGasto
--FROM Clientes
--INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
--INNER JOIN DetalhesPedidos ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--INNER JOIN Produtos ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--GROUP BY Clientes.NomeCliente;

--04
--SELECT Produtos.NomeProduto, SUM(DetalhesPedidos.Quantidade) AS QuantidadeVendida
--FROM Produtos
--INNER JOIN DetalhesPedidos ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
--GROUP BY Produtos.NomeProduto
--ORDER BY QuantidadeVendida DESC;

--05
--SELECT Pedidos.DataPedido, SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS Faturamento
--FROM Pedidos
--INNER JOIN DetalhesPedidos ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--INNER JOIN Produtos ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--GROUP BY Pedidos.DataPedido
--ORDER BY Pedidos.DataPedido DESC;

--------------------------------------------------------------------------------------------------

--QUESTÃO 06
SELECT
NomeCliente,
COUNT(DISTINCT DetalhesPedidos.ProdutoID) AS 'Número de produtos'
FROM Clientes
INNER JOIN Pedidos
ON Pedidos.ClienteID = Clientes.ClienteID
INNER JOIN DetalhesPedidos
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
INNER JOIN Produtos
ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
GROUP BY NomeCliente

--QUESTÃO 07
SELECT
Pedidos.PedidoID,
AVG(DetalhesPedidos.Quantidade) AS 'Média de itens'
FROM Pedidos
INNER JOIN DetalhesPedidos
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
GROUP BY Pedidos.PedidoID

--QUESTÃO 08
SELECT
COUNT(Pedidos.PedidoID) AS 'Total de pedidos por mês',
YEAR(Pedidos.DataPedido) AS 'Ano',
MONTH(Pedidos.DataPedido) AS 'Mês'
FROM Pedidos
GROUP BY YEAR(Pedidos.DataPedido), MONTH(Pedidos.DataPedido)
ORDER BY YEAR(Pedidos.DataPedido) DESC

--QUESTÃO 09
SELECT
NomeCategoria,
SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS 'Valor total vendido'
FROM Categorias
INNER JOIN Produtos
ON Categorias.CategoriaID = Produtos.CategoriaID
INNER JOIN DetalhesPedidos
ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
GROUP BY NomeCategoria

--QUESTÃO 10
--ALTER TABLE Pedidos ADD Total DECIMAL(10, 2);

--UPDATE Pedidos
--SET Total = (
--    SELECT SUM(DetalhesPedidos.Quantidade * Produtos.Preco)
--    FROM DetalhesPedidos
--    INNER JOIN Produtos ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--    WHERE DetalhesPedidos.PedidoID = Pedidos.PedidoID
--);

SELECT
Clientes.NomeCliente,
MAX(Pedidos.Total)AS 'Valor total do pedido'
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID
GROUP BY Clientes.NomeCliente
