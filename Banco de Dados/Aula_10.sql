CREATE DATABASE empresa;

USE empresa;

CREATE TABLE funcionario(
	id_funcionario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	sexo CHAR(1) NOT NULL,
	salario DECIMAL(6,2) NOT NULL,
	PRIMARY KEY(id_funcionario)
);

INSERT INTO funcionario(nome, sexo, salario) VALUES
('Lucas', 'M', 2.500), ('Matheus', 'M', 1.500),
('Maria', 'F', 1.200), ('Alex', 'M', 1.200),
('Julia', 'F', 1.750), ('João', 'M', 2.100),
('Ana', 'F', 1.350), ('Jorge', 'M', 2.200),
('Simão', 'M', 1.200), ('Eduarda', 'F', 1.800);

DELIMITER $$
CREATE PROCEDURE func_minimo(sl DECIMAL)
SELECT COUNT(*) FROM funcionario WHERE salario < sl;
$$
CALL func_minimo(2.000);

DELIMITER $$
CREATE PROCEDURE func_salario(id SMALLINT)
SELECT * FROM funcionario WHERE id_funcionario = id;
$$
CALL func_salario(2);

DELIMITER $$
CREATE PROCEDURE aumento()
UPDATE funcionario SET salario = (salario * 1.1);
$$
CALL aumento();

DELIMITER $$
CREATE FUNCTION soma(a INT, b INT)
RETURNS INT
RETURN a + b;
$$
SELECT soma(3, 4) AS 'Soma de números';

CREATE TABLE backup(
	id_funcionario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	sexo CHAR(1) NOT NULL,
	salario DECIMAL(6,2) NOT NULL,
	PRIMARY KEY(id_funcionario)
);

DELIMITER $$
CREATE TRIGGER faz_backup BEFORE DELETE
ON funcionario
FOR EACH ROW
BEGIN
INSERT INTO backup(nome, sexo, salario) VALUES
(OLD.nome, OLD.sexo, OLD.salario);
END
$$

DELETE FROM funcionario WHERE id_funcionario = 1;

SELECT * FROM backup;