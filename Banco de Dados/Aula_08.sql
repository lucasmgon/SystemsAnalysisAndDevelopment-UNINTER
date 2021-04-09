CREATE DATABASE novo_Sistema;

USE novo_Sistema;

CREATE TABLE cad_cidade(
    id_cidade INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    uf CHAR(2) NOT NULL,
    PRIMARY KEY(id_cidade)
);

SHOW TABLES;

DESCRIBE cad_cidade;

INSERT INTO cad_cidade(nome, uf) VALUES
('Curitiba', 'PR'), ('Rio de Janeiro', 'RJ'), ('Ponta Grossa', 'PR'), ('São Paulo', 'SP'), ('Ribeirão','SP');

ALTER TABLE cad_cidade RENAME cidade;

SELECT * FROM cidade;

SELECT * FROM cidade WHERE uf = 'SP';

CREATE TABLE funcionario(
    id_funcionario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    endereco VARCHAR(40) NOT NULL,
    numero INT(6) NOT NULL,
    salario DECIMAL(6,2),
    id_cidade INT NOT NULL,
    PRIMARY KEY(id_funcionario)
);

ALTER TABLE funcionario ADD sexo CHAR(1);

INSERT INTO funcionario(nome, endereco, numero, salario, id_cidade, sexo) VALUES
('Pedro', 'Rua Flores', 30, 1500.00, 2, 'M'),
('Maria', 'Av. Brasil', 400, 1960.70, 1, 'F'),
('Julia', 'Rua do João', 759, 3800.00, 4,'F'),
('Lucas', 'Rua das Papoulas', 2, 3450.50, 2, 'M');

SELECT nome, sexo FROM funcionario;

SELECT * FROM funcionario WHERE salario > 2000;

SELECT * FROM funcionario WHERE sexo = 'M' AND salario <= 1500;

SELECT * FROM funcionario ORDER BY SALARIO ASC;

SELECT * FROM funcionario WHERE salario >= 2000 AND salario <= 3000;

SELECT * FROM funcionario WHERE nome LIKE 'M%';

SELECT * FROM funcionario WHERE nome LIKE '%a%';

SELECT * FROM funcionario WHERE nome NOT LIKE 'M%';

ALTER TABLE funcionario ADD setor VARCHAR(10);

UPDATE funcionario SET setor = 'Produção';

UPDATE funcionario SET setor = 'Gerente' WHERE id_funcionario = 3;

DELETE FROM funcionario WHERE id_funcionario > 3;

DELETE FROM cidade WHERE uf = 'MS';

SELECT funcionario.nome, cidade.nome FROM funcionario JOIN cidade ON funcionario.id_cidade = cidade.id_cidade;

SELECT AVG(salario) FROM funcionario;

SELECT sexo, AVG(salario) FROM funcionario GROUP BY (sexo);

SELECT SUM(salario) FROM funcionario;

SELECT COUNT(*) FROM cidade;