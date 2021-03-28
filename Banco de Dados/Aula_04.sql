-- Inserindo dados na tabela aluno --
INSERT INTO aluno(id_aluno, nome) VALUES (1, 'Lucas'); -- Inserir apenas um registro --

INSERT INTO aluno VALUES (2, 'João'); -- Inserir registro sem especificar as colunas --

-- Inserir vários registros --
INSERT INTO aluno(id_aluno, nome) VALUES
(3, 'Pedro'), (4, 'Maria'), (5, 'Alex'), (6, 'Bruno'), (7, 'Daniel'), (8, 'Ana'),
(9, 'Paula'), (10, 'Mayara'), (11, 'Marcos'), (12, 'Danilo'), (13, 'Ronaldo');

-- Selecionando dados da tabela aluno --
SELECT * FROM aluno; -- Selecionar todos os registros --

SELECT * FROM aluno WHERE id_aluno > 5; -- Restringir dados com o comando WHERE--

SELECT * FROM aluno WHERE nome = 'Danilo';

SELECT * FROM aluno WHERE nome = 'João' OR id_aluno >= 9;

SELECT * FROM aluno ORDER BY nome ASC; -- Trazer os registros em ordem crescente --

SELECT * FROM aluno ORDER BY id_aluno DESC; -- Trazer os registros em ordem decrescente --

SELECT * FROM aluno WHERE id_aluno BETWEEN 4 AND 9; -- Trazer os registros entre um intervalo de dois valores --

SELECT nome FROM aluno WHERE nome LIKE '%a'; -- Trazer qualquer registro que termine com 'a' --

SELECT nome FROM aluno WHERE nome LIKE '%a%'; -- Trazer qualquer registro que tenha 'a' em qualquer posição --

SELECT nome FROM aluno WHERE nome LIKE '_a%'; -- Trazer qualquer registro que tenha 'a' na segunda posição --

SELECT nome FROM aluno WHERE id_aluno > 2 AND nome LIKE '_e%';

SELECT nome FROM aluno WHERE nome NOT LIKE '%a%';

-- Atualizando e deletando dados na tabela aluno --
UPDATE aluno SET nome = 'Lucas Matheus' WHERE id_aluno = 1; -- Atualizar o registro nome, onde id_aluno é igual a 1 --

ALTER TABLE aluno ADD COLUMN estado VARCHAR(30); -- Adicionar coluna estado --

ALTER TABLE aluno ADD COLUMN cidade VARCHAR(30); -- Adicionar coluna cidade --

UPDATE aluno SET estado = 'Paraná', cidade = 'Sengés' WHERE id_aluno < 8; -- Atualizar registro de duas colunas --

UPDATE aluno SET estado = 'São Paulo', cidade = 'Itararé' WHERE id_aluno >= 8;

DELETE FROM aluno WHERE id_aluno = 3; -- Deletar registro, onde id_aluno é igual a 3 --

DELETE FROM aluno WHERE id_aluno >= 9; -- Deletar registro, onde id_aluno é maior e igual a 9 --