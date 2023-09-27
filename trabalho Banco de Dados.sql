CREATE DATABASE Faculdade;

USE Faculdade;

CREATE TABLE Aluno (
  idAluno INT PRIMARY KEY,
  matricula VARCHAR(10) NOT NULL,
  nome VARCHAR(10) NOT NULL
);
 
CREATE TABLE Disciplina (
  idDisciplina INT PRIMARY KEY,
  nome VARCHAR(10) NOT NULL,
  cargaHoraria INT NOT NULL
);

CREATE TABLE Curso (
  idCurso INT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE AlunoCurso (
  idAluno INT,
  idCurso INT,
  anoEntrada INT,
  FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

CREATE TABLE Historico (
  idAluno INT,
  idDisciplina INT,
  nota FLOAT,
  dataHistorico DATE,
  FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
  FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

CREATE TABLE Grade (
  idGrade INT PRIMARY KEY,
  idCurso INT,
  ano INT,
  cargaHorariaTotal INT,
  FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

CREATE TABLE GradeDisciplina (
  idGrade INT,
  idDisciplina INT,
  FOREIGN KEY (idGrade) REFERENCES Grade(idGrade),
  FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

INSERT INTO Aluno VALUES
  (1, 'ADS001', 'Alice de Souza'),
  (2, 'BDS001', 'Ana Luiza de Paula'),
  (3, 'CDS001', 'Maria Helena Mantovani'),
  (4, 'DSM001', 'Marta da Silva'),
  (5, 'ENC001', 'Viviane Chaves Filha'),
  (6, 'ENS001', 'Paula Roberta Vitorino'),
  (7, 'GTI001', 'Miriam Miranda'),
  (8, 'JDS001', 'Beatriz Leopoldina'),
  (9, 'RCS001', 'Nicole Amanda de Jesus'),
  (10, 'RCS002', 'Vitor Martins'),
  (11, 'JDS002', 'João Augusto de Moura'),
  (12, 'GTI002', 'Matheus Murilo de Souza'),
  (13, 'ENS002', 'Mario Vicente'),
  (14, 'ENC002', 'Antônio Cozer'),
  (15, 'DSM002', 'Luciano Tucolo'),
  (16, 'CDS002', 'Guilherme Koeriche'),
  (17, 'BDS002', 'Lucas Cochuelo'),
  (18, 'ADS002', 'Diogo Furlan'),
  (19, 'ADS003', 'Marcelo Luis dos Santos');

INSERT INTO Disciplina VALUES
  (1, 'Análise de Sistemas', 60),
  (2, 'Arquitetura de Computadores', 60),
  (3, 'Atividade Extensionista I', 40),
  (4, 'Atividade Extensionista II', 40),
  (5, 'Banco de Dados', 60),
  (6, 'Empreendedorismo', 40),
  (7, 'Engenharia de Software', 60),
  (8, 'Fundamentos de Sistemas de Informação', 60),
  (9, 'Gestão de Projetos', 40),
  (10, 'Linguagens de Programação', 60);

INSERT INTO Curso VALUES
  (1, 'Análise e Desenvolvimento de Sistemas'),
  (2, 'Banco de Dados'),
  (3, 'Engenharia de Software'),
  (4, 'Redes de Computadores');

INSERT INTO AlunoCurso VALUES
  (1, 1, 2021),
  (2, 1, 2021),
  (3, 2, 2022),
  (4, 3, 2022),
  (5, 3, 2021),
  (6, 4, 2023),
  (7, 4, 2022),
  (8, 1, 2023),
  (9, 2, 2021),
  (10, 4, 2023),
  (11, 3, 2022),
  (12, 1, 2023),
  (13, 3, 2021),
  (14, 2, 2022),
  (15, 4, 2021),
  (16, 1, 2022),
  (17, 3, 2023),
  (18, 2, 2023),
  (19, 1, 2021);

INSERT INTO Historico VALUES
  (1, 1, 8.5, '2022-05-01'),
  (1, 2, 7.8, '2022-06-05'),
  (2, 1, 9.2, '2022-05-01'),
  (2, 2, 6.5, '2022-06-05'),
  (3, 5, 7.0, '2021-12-15'),
  (4, 5, 8.3, '2021-12-15'),
  (4, 7, 9.1, '2022-01-10'),
  (5, 7, 8.0, '2022-01-10'),
  (5, 10, 6.9, '2022-03-02'),
  (6, 6, 9.7, '2023-04-22'),
  (6, 7, 8.4, '2023-05-12'),
  (7, 6, 7.2, '2022-11-30'),
  (7, 7, 6.8, '2023-01-05'),
  (8, 1, 9.0, '2023-05-01'),
  (8, 7, 7.5, '2023-06-20'),
  (9, 5, 8.7, '2021-11-25'),
  (9, 9, 7.6, '2021-12-18'),
  (10, 7, 6.0, '2023-05-20'),
  (11, 3, 7.9, '2022-01-25'),
  (12, 1, 9.3, '2023-06-01'),
  (12, 7, 8.8, '2023-06-28'),
  (13, 7, 9.4, '2022-02-10'),
  (13, 10, 8.1, '2022-04-01'),
  (14, 5, 7.7, '2022-01-15'),
  (14, 9, 6.6, '2022-02-28'),
  (15, 5, 9.6, '2021-12-10'),
  (15, 7, 7.7, '2022-01-15'),
  (16, 1, 8.9, '2022-02-01'),
  (16, 7, 6.3, '2022-03-18'),
  (17, 7, 7.5, '2023-06-10'),
  (17, 10, 8.0, '2023-06-27'),
  (18, 5, 9.1, '2023-03-05'),
  (18, 9, 6.7, '2023-04-15'),
  (19, 1, 9.8, '2021-12-05');

INSERT INTO Grade VALUES
  (1, 1, 2021, 2400),
  (2, 2, 2022, 2400),
  (3, 3, 2023, 2400),
  (4, 4, 2023, 2400);

INSERT INTO GradeDisciplina VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (1, 6),
  (1, 7),
  (1, 8),
  (1, 9),
  (1, 10),
  (2, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (2, 9),
  (2, 10),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (3, 6),
  (3, 7),
  (3, 8),
  (3, 9),
  (3, 10),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4),
  (4, 5),
  (4, 6),
  (4, 7),
  (4, 8),
  (4, 9),
  (4, 10);
