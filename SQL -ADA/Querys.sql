-- Cria a tabela Alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome_completo VARCHAR(255),
    nome_pai VARCHAR(255),
    nome_mae VARCHAR(255),
    endereco VARCHAR(255),
    cpf VARCHAR(11) UNIQUE,
    idade INT,
    curso_matriculado VARCHAR(255),
    data_matricula DATE,
    turma_id INT,
    professor_curso VARCHAR(255)
);

-- Inserção de dados na tabela Alunos
INSERT INTO alunos (id_aluno, nome_completo, nome_pai, nome_mae, endereco, cpf, idade, curso_matriculado, data_matricula, turma_id, professor_curso)
VALUES
    (1, 'Alice Silva', 'Carlos Silva', 'Maria Silva', 'Rua A, 123', '12345678901', 18, 'Ciência da Computação', '2023-01-10', 1, 'Prof. João'),
    (2, 'Bruno Santos', 'Pedro Santos', 'Ana Santos', 'Rua B, 456', '23456789012', 19, 'Engenharia de Dados', '2023-01-11', 2, 'Prof. Maria'),
    (3, 'Carla Oliveira', 'José Oliveira', 'Patrícia Oliveira', 'Rua C, 789', '34567890123', 20, 'Sistemas de Informação', '2023-01-12', 3, 'Prof. Carlos'),
    (4, 'Daniel Lima', 'Fernando Lima', 'Cristina Lima', 'Rua D, 987', '45678901287', 21, 'Engenharia de Software', '2023-01-13', 4, 'Prof. Ana'),
    (5, 'Eva Pereira', 'Roberto Pereira', 'Laura Pereira', 'Rua E, 321', '56789982345', 22, 'Análise de Dados', '2023-01-14', 1, 'Prof. João'),
    (6, 'Felipe Santos', 'Maurício Santos', 'Camila Santos', 'Rua F, 654', '63490123456', 23, 'Ciência da Computação', '2023-01-15', 2, 'Prof. Maria'),
    (7, 'Gabriel Costa', 'Luiz Costa', 'Sandra Costa', 'Rua G, 987', '78908934567', 24, 'Análise de Sistemas', '2023-01-16', 3, 'Prof. Carlos'),
    (8, 'Helena Rocha', 'Antônio Rocha', 'Carolina Rocha', 'Rua H, 654', '89096345678', 25, 'Sistemas de Informação', '2023-01-17', 4, 'Prof. Ana'),
    (9, 'Isaac Oliveira', 'Ricardo Oliveira', 'Fernanda Oliveira', 'Rua I, 321', '90156456789', 26, 'Engenharia de Software', '2023-01-18', 1, 'Prof. João'),
    (10, 'Júlia Lima', 'Fábio Lima', 'Renata Lima', 'Rua J, 987', '10987654321', 27, 'Análise de Dados', '2023-01-19', 2, 'Prof. Maria'),
    (11, 'Kauan Pereira', 'Alberto Pereira', 'Isabel Pereira', 'Rua K, 654', '23456789088', 28, 'Ciência da Computação', '2023-01-20', 3, 'Prof. Carlos'),
    (12, 'Laura Santos', 'Eduardo Santos', 'Mariana Santos', 'Rua L, 321', '34567893333', 19, 'Engenharia de Dados', '2023-01-21', 4, 'Prof. Ana'),
    (13, 'Mateus Oliveira', 'Paulo Oliveira', 'Beatriz Oliveira', 'Rua M, 987', '45678901234', 20, 'Sistemas de Informação', '2023-01-22', 1, 'Prof. João'),
    (14, 'Nina Costa', 'Sérgio Costa', 'Tatiane Costa', 'Rua N, 654', '56789012345', 21, 'Engenharia de Software', '2023-01-23', 2, 'Prof. Maria'),
    (15, 'Otávio Rocha', 'Marcelo Rocha', 'Juliana Rocha', 'Rua O, 321', '67890123456', 22, 'Análise de Dados', '2023-01-24', 3, 'Prof. Carlos'),
    (16, 'Pedro Oliveira', 'Antônio Oliveira', 'Fernanda Oliveira', 'Rua P, 987', '78901234567', 24, 'Ciência da Computação', '2023-01-25', 4, 'Prof. Ana'),
    (17, 'Quiteria Lima', 'Ricardo Lima', 'Luciana Lima', 'Rua Q, 654', '89012345678', 24, 'Análise de Sistemas', '2023-01-26', 1, 'Prof. João'), 
    (18, 'Rafaela Santos', 'João Santos', 'Aline Santos', 'Rua R, 321', '90123456789', 25, 'Sistemas de Informação', '2023-01-27', 2, 'Prof. Maria'),
    (19, 'Samuel Oliveira', 'Roberto Oliveira', 'Gisele Oliveira', 'Rua S, 987', '90123456780', 26, 'Engenharia de Software', '2023-01-28', 3, 'Prof. Carlos'),
    (20, 'Tatiane Pereira', 'Luiz Pereira', 'Elaine Pereira', 'Rua T, 654', '89012345670', 27, 'Análise de Dados', '2023-01-29', 4, 'Prof. Ana');

-- Cria a tabela Professores
CREATE TABLE professores (
    id_professor INT PRIMARY KEY,
    professor_curso VARCHAR(255),
    turma_id INT,
    materia_id INT
);

-- Inserção de dados na tabela Professores
INSERT INTO professores (id_professor, professor_curso, turma_id, materia_id)
VALUES
    (1, 'Prof. João', 1, 1),
    (2, 'Prof. Maria', 2, 2),
    (3, 'Prof. Carlos', 3, 3),
    (4, 'Prof. Ana', 4, 4);

-- Cria a tabela Turmas
CREATE TABLE turmas (
    id_turma INT PRIMARY KEY,
    professor_id INT,
    nome_turma VARCHAR(255)
);

-- Inserção de dados na tabela Turmas
INSERT INTO turmas (id_turma, professor_id, nome_turma)
VALUES
    (1, 1, 'Turma A'),
    (2, 2, 'Turma B'),
    (3, 3, 'Turma C'),
    (4, 4, 'Turma D');

-- Cria a tabela Materias
CREATE TABLE materias (
    id_materia INT PRIMARY KEY,
    nome_materia VARCHAR(255)
);

-- Inserção de dados na tabela Materias
INSERT INTO materias (id_materia, nome_materia)
VALUES
    (1, 'Ciência da Computação'),
    (2, 'Engenharia de Dados'),
    (3, 'Sistemas de Informação'),
    (4, 'Engenharia de Software'),
    (5, 'Análise de Dados'),
    (6, 'Análise de Sistemas');

-- Cria a tabela Presenca
CREATE TABLE presenca (
    id_aluno INT,
    id_materia INT,
    id_professor INT,
    presenca BOOLEAN,
    data_aula DATE,
    tempo_permanencia INT,
    hora_entrada TIME,
    hora_saida TIME
);

-- Inserção de dados na tabela Presenca
INSERT INTO presenca (id_aluno, id_materia, id_professor, presenca, data_aula, tempo_permanencia, hora_entrada, hora_saida)
VALUES
    (1, 1, 1, TRUE, '2023-01-10', 180, '19:00:00', '22:00:00'),
    (2, 2, 2, TRUE, '2023-01-11', 150, '19:30:00', '22:00:00'),
    (3, 3, 3, TRUE, '2023-01-12', 120, '20:00:00', '22:00:00'),
    (4, 4, 4, TRUE, '2023-01-13', 160, '19:30:00', '22:10:00'),
    (5, 1, 1, TRUE, '2023-01-14', 170, '19:00:00', '21:50:00'),
    (6, 2, 2, TRUE, '2023-01-15', 140, '19:15:00', '21:35:00'),
    (7, 3, 3, TRUE, '2023-01-16', 180, '19:45:00', '22:45:00'),
    (8, 4, 4, TRUE, '2023-01-17', 130, '19:20:00', '21:30:00'),
    (9, 1, 1, TRUE, '2023-01-18', 150, '19:45:00', '22:15:00'),
    (10, 2, 2, TRUE, '2023-01-19', 160, '19:15:00', '21:55:00'),
    (11, 3, 3, TRUE, '2023-01-20', 140, '19:30:00', '21:50:00'),
    (12, 4, 4, TRUE, '2023-01-21', 180, '19:00:00', '22:00:00'),
    (13, 1, 1, TRUE, '2023-01-22', 170, '19:00:00', '21:50:00'),
    (14, 2, 2, TRUE, '2023-01-23', 140, '19:15:00', '21:35:00'),
    (15, 3, 3, TRUE, '2023-01-24', 160, '19:30:00', '22:10:00'),
    (16, 4, 4, TRUE, '2023-01-25', 150, '19:45:00', '22:15:00'),
    (17, 1, 1, TRUE, '2023-01-26', 180, '19:00:00', '22:00:00'),
    (18, 2, 2, TRUE, '2023-01-27', 130, '19:30:00', '21:40:00'),
    (19, 3, 3, TRUE, '2023-01-28', 170, '19:15:00', '21:55:00'),
    (20, 4, 4, TRUE, '2023-01-29', 140, '19:45:00', '21:05:00');
