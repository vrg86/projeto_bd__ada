-- Adiciona chave estrangeira referenciando a tabela turmas
ALTER TABLE alunos
ADD CONSTRAINT fk_turma_aluno
FOREIGN KEY (turma_id) REFERENCES turmas(id_turma);

-- Adiciona chave estrangeira referenciando a tabela professores
ALTER TABLE turmas
ADD CONSTRAINT fk_professor_turma
FOREIGN KEY (professor_id) REFERENCES professores(id_professor);

-- Adiciona chave estrangeira referenciando a tabela materias
ALTER TABLE professores
ADD CONSTRAINT fk_materia_professor
FOREIGN KEY (materia_id) REFERENCES materias(id_materia);

-- Adiciona chave estrangeira referenciando a tabela alunos
ALTER TABLE presenca
ADD CONSTRAINT fk_aluno_presenca
FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno);

-- Adiciona chave estrangeira referenciando a tabela professores
ALTER TABLE presenca
ADD CONSTRAINT fk_professor_presenca
FOREIGN KEY (id_professor) REFERENCES professores(id_professor);

-- Adiciona chave estrangeira referenciando a tabela materias
ALTER TABLE presenca
ADD CONSTRAINT fk_materia_presenca
FOREIGN KEY (id_materia) REFERENCES materias(id_materia);
