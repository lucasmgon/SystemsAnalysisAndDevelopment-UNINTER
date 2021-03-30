ALTER TABLE aluno ADD COLUMN id_materia INT; -- Adicionando a coluna id_materia --

ALTER TABLE aluno ADD CONSTRAINT fk_aluno_materia FOREIGN KEY (id_materia) REFERENCES materia (id_materia); -- Definindo a chave estrangeira --

-- Inserindo registros na tabela materia --
INSERT INTO materia(data_inicio, nome) VALUES
('2020-01-01', 'Administração'), ('2020-01-01', 'Ciências Contábeis'),
('2020-01-01', 'Direito'), ('2020-01-01', 'Educação Física'),
('2020-01-01', 'História'), ('2020-01-01', 'Matemática'),
('2020-01-01', 'Pedagogia'), ('2020-01-01', 'Sistema de Informação');

-- Atualizando a coluna id_materia --
UPDATE aluno SET id_materia = '8' WHERE id_aluno = 1;
UPDATE aluno SET id_materia = '2' WHERE id_aluno = 2;
UPDATE aluno SET id_materia = '1' WHERE id_aluno = 4;
UPDATE aluno SET id_materia = '8' WHERE id_aluno = 5;
UPDATE aluno SET id_materia = '3' WHERE id_aluno = 6;
UPDATE aluno SET id_materia = '6' WHERE id_aluno = 7;
UPDATE aluno SET id_materia = '5' WHERE id_aluno = 8;

-- Realizando consultas entre tabelas --
SELECT aluno.nome, materia.nome FROM aluno INNER JOIN materia ON aluno.id_aluno = materia.id_materia; -- Selecionar dados da tabela aluno e materia --

SELECT aluno.nome, materia.nome FROM aluno RIGHT JOIN materia ON aluno.id_aluno = materia.id_materia; -- Usando o RIGHT JOIN para realizar consultas --

-- Selecionar dados das tabelas e definindo apelido para as colunas
SELECT aluno.nome as 'Nome do aluno', materia.nome as 'Materia' FROM aluno INNER JOIN materia ON aluno.id_materia = materia.id_materia;

SELECT AVG(id_aluno) FROM aluno; -- Média de alunos cadastrados --

SELECT COUNT(*) as 'Quantidade de alunos' FROM aluno; -- Conta o quantos alunos têm cadastrado --

-- Trabalhando com DML --
CREATE USER 'lucas' IDENTIFIED BY '123456'; -- Criar usuário --

DROP USER 'lucas'; -- Excluir usuário --
