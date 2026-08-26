CREATE DATABASE naranerd;

USE naranerd;

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY,
    nome VARCHAR (150) NOT NULL,
    email VARCHAR (150),
    cidade VARCHAR(100)
);

CREATE TABLE vendedores (
	id_vendedor INT PRIMARY KEY,
    nome VARCHAR (150),
    loja VARCHAR (150)
);

CREATE TABLE produtos (
	id_produto INT PRIMARY KEY,
    nome VARCHAR (150),
    categoria  VARCHAR (150),
    preco decimal(10,2)
);

CREATE TABLE vendas (
	id_venda INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT,
    valor DECIMAL(10,2),
    data_venda DATE,
    FOREIGN KEY (id_produto)
		REFERENCES produtos(id_produto),
	FOREIGN KEY (id_vendedor)
		REFERENCES vendedores(id_vendedor)
);        

SET GLOBAL local_infile = 1;

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/Naraned/naranerd_clientes.csv"
INTO TABLE clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_cliente, nome, email, cidade);

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/Naraned/naranerd_produtos.csv"
INTO TABLE produtos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_produto, nome, categoria, preco);

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/Naraned/naranerd_vendas.csv"
INTO TABLE vendas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_venda, id_cliente, id_vendedor, id_produto, quantidade, valor, data_venda);

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/Naraned/naranerd_vendedores.csv"
INTO TABLE vendedores
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_vendedor, nome, loja);

SELECT * FROM clientes;
SELECT id_cliente, SUM(valor) AS total_vendas
FROM vendas
GROUP BY id_cliente
ORDER BY total_vendas DESC;

SELECT c.nome, SUM(v.valor) as faturamento
FROM vendas v 
JOIN clientes c ON v.id_cliente = v.id_produto
GROUP BY c.nome
HAVING SUM(v.valor) > 10000
ORDER BY faturamento DESC;

SELECT s.nome, COUNT(v.quantidade) as bonus
FROM vendas v 
JOIN vendedores s ON s.id_vendedor = v.quantidade
GROUP BY s.nome
HAVING COUNT(v.valor) > 1000
ORDER BY bonus DESC;

