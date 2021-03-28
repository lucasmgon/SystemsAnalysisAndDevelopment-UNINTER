CREATE DATABASE sistema; -- Criar BD --
USE sistema; -- Usar o BD --

-- Criando tabelas do BD --
CREATE TABLE cad_aluno(
	id_aluno INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30),
	PRIMARY KEY (id_aluno)
);

CREATE TABLE materia(
	id_materia INT NOT NULL AUTO_INCREMENT,
	data_inicio DATE NOT NULL,
	nome VARCHAR(40) NOT NULL,
	PRIMARY KEY(id_materia)
);

-- Modificando as tabelas do BD --
ALTER TABLE cad_aluno RENAME aluno; -- Renamear tabela --

ALTER TABLE aluno MODIFY nome VARCHAR(50); -- Modificar a coluna --

ALTER TABLE aluno ADD COLUMN email VARCHAR(30); -- Adicionar nova coluna --

ALTER TABLE aluno DROP COLUMN email; -- Excluir coluna email --

ALTER TABLE aluno AUTO_INCREMENT = 15; -- Modificando o AUTO_INCREMENT para iniciar no 15 --

DROP TABLE aluno; -- Excluir tabela aluno --

DROP DATABASE sistema; -- Excluir BD sistema --