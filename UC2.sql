CREATE DATABASE naramarket;

USE naramarket;

CREATE TABLE lojas (
	id_loja INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    bairro VARCHAR (100)
);

CREATE TABLE produtos (
	id_produto INT PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	categoria VARCHAR (100),
    preco DECIMAL(10,2)
);

CREATE TABLE vendas (
	id_venda INT PRIMARY KEY,
    id_produto INT NOT NULL,
    id_loja INT NOT NULL,
    quantidade INT,
    valor DECIMAL(8,2),
    data_venda DATE,
    FOREIGN KEY (id_produto)
		REFERENCES produtos(id_produto),
	FOREIGN KEY (id_loja)
		REFERENCES lojas(id_loja)
);

SET GLOBAL local_infile = 1;

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/naramarket_lojas.csv" 
INTO TABLE lojas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_loja, nome, bairro);

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/naramarket_produtos.csv" 
INTO TABLE produtos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_produto, nome, categoria, preco);

LOAD DATA INFILE "C:/Users/daniel.cnunes.SENACRJEDU/Documents/SQL/naramarket_vendas.csv" 
INTO TABLE vendas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_venda, id_produto, id_loja, quantidade, valor, data_venda);

-- Com filtro simples
SELECT * FROM vendas
WHERE valor > 100;

-- Ordenando e limitando resultados
SELECT id_produto, valor FROM vendas
ORDER BY valor DESC
LIMIT 5;

-- Vendas de uma loja específica
SELECT id_produto, valor FROM vendas
WHERE id_loja = 3;

-- Vendas dentro de um período
SELECT id_produto, valor, data_venda FROM vendas
WHERE data_venda >= '2024-03-01'
AND data_venda <= '2024-03-31';

-- Vendas de produtos específicos
SELECT id_produto, valor FROM vendas
WHERE id_produto IN (5, 12, 47);

-- Total vendido por produto
SELECT id_produto, SUM(valor) AS total_vendas
FROM vendas
GROUP BY id_produto
ORDER BY total_vendas DESC;

-- Quantidade de vendas por loja
SELECT id_loja, COUNT(id_venda) AS quantidade
FROM vendas
GROUP BY id_loja;

SELECT id_loja, COUNT(id_venda) AS quantidade
FROM vendas
WHERE data_venda >= '2024-06-01'
GROUP BY id_produto
HAVING total_vendas >= 10000
ORDER BY total_vendas DESC;