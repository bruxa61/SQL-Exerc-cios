--QUESTÃO 01
--A
CREATE DATABASE BD_Teste;

--B
DROP DATABASE BD_Teste;

--C
CREATE DATABASE Exercicios;

--QUESTÃO 02
USE Exercicios;

CREATE TABLE dCliente (
ID_Cliente INT PRIMARY KEY,
Nome_Cliente VARCHAR (100) NOT NULL,
Data_de_Nascimento DATE NOT NULL
);

CREATE TABLE dGerente (
ID_Gerente INT PRIMARY KEY,
Nome_Gerente VARCHAR (100),
Data_de_Contratacao DATETIME,
Salario FLOAT
);

CREATE TABLE fContratos (
ID_Contrato INT PRIMARY KEY,
Data_de_Assinatura DATETIME,
ID_Cliente INT,
ID_Gerente INT,
Valor_do_Contrato FLOAT
);

SELECT*
FROM dCliente

SELECT*
FROM dGerente

SELECT*
FROM fContratos

--QUESTÃO 03
INSERT INTO dCliente (ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
(1, 'André Martins', '1989-02-12'),
(2, 'Bárbara Campos', '1992-05-07'),
(3, 'Carol Freitas', '1985-04-23'),
(4, 'Diego Cardoso', '1994-10-11'),
(5, 'Eduardo Pereira', '1988-11-09'),
(6, 'Fabiana Silva', '1989-09-02'),
(7, 'Gustavo Barbie', '1993-06-27'),
(8, 'Helen Viana', '1990-02-11');

INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
VALUES
(1, 'Lucas Sampaio', '2015-21-03 00:00:00', '6700'),
(2, 'Mariana Padilha', '2011-10-01 00:00:00', '9900'),
(3, 'Nathália Santos', '2018-03-10 00:00:00', '7200'),
(4, 'Otávio Costa', '2017-18-04 00:00:00', '11000');

INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
VALUES
(1, '2019-12-01 00:00:00', 8, 1, 23000),
(2, '2019-10-02 00:00:00', 3, 2, 15500),
(3, '2019-07-03 00:00:00', 7, 2, 6500),
(4, '2019-15-03 00:00:00', 1, 3, 33000),
(5, '2019-21-03 00:00:00', 5, 4, 11100),
(6, '2019-23-03 00:00:00', 4, 2, 5500),
(7, '2019-28-03 00:00:00', 9, 3, 55000),
(8, '2019-04-04 00:00:00', 2, 1, 31000),
(9, '2019-05-04 00:00:00', 10, 4, 3400),
(10, '2019-05-04 00:00:00', 6, 2, 9200);

--QUESTÃO 04
INSERT INTO dCliente (ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
(9, 'Lana Alves Botelho', '2000-07-07');

INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
VALUES
(5, 'Morgana Alves Botelho', '2005-07-07', 7700);

INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
VALUES
(11, '2024-25-10', 9, 5, 24000);

--QUESTÃO 05
UPDATE fContratos
SET 
Data_de_Assinatura = '2019-17-03',
ID_Gerente = 2,
Valor_do_Contrato = 33500
WHERE ID_Contrato = 4

--QUESTÃO 06
DELETE FROM fContratos
WHERE ID_Contrato = 11