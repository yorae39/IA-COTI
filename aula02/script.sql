-- IA COTI AULA02 - CONEXÃO COM BD : 16/04/2019
-- POSTGRESQL
-- EXCLUIR UMA BASE DE DADOS

DROP DATABASE aular;

CREATE DATABASE aular;

\c aular

CREATE TABLE produto (
 codigo  		 serial            primary key,
 nome     		 varchar(50)       not null,
 preco    		 float			   not null,
 quantidade      int			   not null
);


\d produto;
\d 


INSERT INTO produto (nome, preco, quantidade) VALUES('PS4', 1200.00, 10);
INSERT INTO produto (nome, preco, quantidade) VALUES('XBOX', 400.00, 1);
INSERT INTO produto (nome, preco, quantidade) VALUES('Super Nintendo', 254.00, 6);
INSERT INTO produto (nome, preco, quantidade) VALUES('Mega Drive', 1400.00, 4);
INSERT INTO produto (nome, preco, quantidade) VALUES('Geladeira', 1200.00, 10);
INSERT INTO produto (nome, preco, quantidade) VALUES('TV LCD', 1350.00, 5);
INSERT INTO produto (nome, preco, quantidade) VALUES('TV LCD 42', 800.00, 6);
INSERT INTO produto (nome, preco, quantidade) VALUES('Monitor', 450.00, 5);
INSERT INTO produto (nome, preco, quantidade) VALUES('Lava Roupas Brastemp', 1500.00, 7);


SELECT * FROM produto;


