SHOW DATABASES;

CREATE DATABASE aula;

USE aula;

CREATE TABLE usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT,
	login VARCHAR(20) NOT NULL,
	senha VARCHAR(15) NOT NULL,
	PRIMARY KEY(id_usuario)
);

CREATE TABLE cidade(
	id_cidade INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(15),
	PRIMARY KEY(id_cidade)
);

SHOW TABLES;

CREATE USER gerencia@localhost IDENTIFIED BY '123';

GRANT CREATE, SELECT, INSERT,UPDATE ON aula.cidade TO gerencia@localhost;

GRANT ALL PRIVILEGES ON aula.cidade TO gerencia@localhost;

INSERT INTO cidade(nome) VALUE ('Irati');
INSERT INTO cidade(nome) VALUE ('Sengés');

GRANT ALL PRIVILEGES ON aula.* TO gerencia@localhost;

INSERT INTO usuario(login, senha) VALUES ('Lucas', '12345');
INSERT INTO usuario(login, senha) VALUES ('Matheus', 'abcd');

DESCRIBE cidade;

CREATE INDEX id_cidade ON cidade(id_cidade);

CREATE INDEX id_usuario ON usuario(id_usuario);

CREATE TABLE resumo_cadatro(
	id_resumo_cadastro INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	sexo CHAR(1) NOT NULL,
	PRIMARY KEY(id_resumo_cadastro),
	INDEX cadastro(id_resumo_cadastro)
);

REVOKE ALL PRIVILEGES ON aula.* FROM gerencia@localhost;

DROP USER gerencia@localhost;

CREATE USER lucas@localhost IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON aula.* TO lucas@localhost;