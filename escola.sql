/* StartByProa: */

CREATE TABLE Aluno (
    nomeAluno VARCHAR,
    cpfAluno VARCHAR,
    dataNascimentoAluno DATE,
    fk_telefoneAluno_telefoneAluno_PK INT,
    fk_emailAluno_emailAluno_PK INT,
    idAluno INT PRIMARY KEY,
    turmaAluno INT,
    fk_enderecoAluno_enderecoAluno_PK INT
);

CREATE TABLE Professor (
    nomeProfessor VARCHAR,
    cpfProfessor CHAR,
    dataNascimentoProfessor DATE,
    fk_disciplinaProfessor_disciplinaProfessor_PK INT,
    fk_emailProfessor_emailProfessor_PK INT,
    idProfessor INT PRIMARY KEY,
    fk_enderecoProfessor_enderecoProfessor_PK INT
);

CREATE TABLE Curso (
    nomeCurso VARCHAR,
    dataInicioCurso DATE,
    dataFimCurso DATE,
    duracaoCurso FLOAT,
    precoCurso FLOAT,
    idCurso INT PRIMARY KEY,
    gradeCurso VARCHAR
);

CREATE TABLE telefoneAluno (
    telefoneAluno_PK INT NOT NULL PRIMARY KEY,
    telefoneAluno CHAR
);

CREATE TABLE emailAluno (
    emailAluno_PK INT NOT NULL PRIMARY KEY,
    emailAluno VARCHAR
);

CREATE TABLE enderecoAluno (
    enderecoAluno_PK INT NOT NULL PRIMARY KEY,
    logradouroEndereco VARCHAR,
    numeroEndereco INT,
    cepEndereco CHAR,
    complementoEndereco VARCHAR,
    bairroEndereco VARCHAR,
    cidadeEndereco VARCHAR,
    estadoEndereco VARCHAR
);

CREATE TABLE disciplinaProfessor (
    disciplinaProfessor_PK INT NOT NULL PRIMARY KEY,
    disciplinaProfessor VARCHAR
);

CREATE TABLE emailProfessor (
    emailProfessor_PK INT NOT NULL PRIMARY KEY,
    emailProfessor VARCHAR
);

CREATE TABLE enderecoProfessor (
    enderecoProfessor_PK INT NOT NULL PRIMARY KEY,
    logradouroEndereco VARCHAR,
    numeroEndereco INT,
    cepEndereco CHAR,
    complementoEndereco VARCHAR,
    bairroEndereco VARCHAR,
    cidadeEndereco VARCHAR,
    estadoEndereco CHAR
);

CREATE TABLE Ensinar (
    fk_Aluno_idAluno INT,
    fk_Professor_idProfessor INT
);

CREATE TABLE Ministrar (
    fk_Curso_idCurso INT,
    fk_Professor_idProfessor INT
);

CREATE TABLE Matricular (
    fk_Curso_idCurso INT,
    fk_Aluno_idAluno INT
);
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_2
    FOREIGN KEY (fk_telefoneAluno_telefoneAluno_PK)
    REFERENCES telefoneAluno (telefoneAluno_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_3
    FOREIGN KEY (fk_emailAluno_emailAluno_PK)
    REFERENCES emailAluno (emailAluno_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_4
    FOREIGN KEY (fk_enderecoAluno_enderecoAluno_PK)
    REFERENCES enderecoAluno (enderecoAluno_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_2
    FOREIGN KEY (fk_disciplinaProfessor_disciplinaProfessor_PK)
    REFERENCES disciplinaProfessor (disciplinaProfessor_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_3
    FOREIGN KEY (fk_emailProfessor_emailProfessor_PK)
    REFERENCES emailProfessor (emailProfessor_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_4
    FOREIGN KEY (fk_enderecoProfessor_enderecoProfessor_PK)
    REFERENCES enderecoProfessor (enderecoProfessor_PK)
    ON DELETE SET NULL;
 
ALTER TABLE Ensinar ADD CONSTRAINT FK_Ensinar_1
    FOREIGN KEY (fk_Aluno_idAluno)
    REFERENCES Aluno (idAluno)
    ON DELETE RESTRICT;
 
ALTER TABLE Ensinar ADD CONSTRAINT FK_Ensinar_2
    FOREIGN KEY (fk_Professor_idProfessor)
    REFERENCES Professor (idProfessor)
    ON DELETE RESTRICT;
 
ALTER TABLE Ministrar ADD CONSTRAINT FK_Ministrar_1
    FOREIGN KEY (fk_Curso_idCurso)
    REFERENCES Curso (idCurso)
    ON DELETE RESTRICT;
 
ALTER TABLE Ministrar ADD CONSTRAINT FK_Ministrar_2
    FOREIGN KEY (fk_Professor_idProfessor)
    REFERENCES Professor (idProfessor)
    ON DELETE RESTRICT;
 
ALTER TABLE Matricular ADD CONSTRAINT FK_Matricular_1
    FOREIGN KEY (fk_Curso_idCurso)
    REFERENCES Curso (idCurso)
    ON DELETE RESTRICT;
 
ALTER TABLE Matricular ADD CONSTRAINT FK_Matricular_2
    FOREIGN KEY (fk_Aluno_idAluno)
    REFERENCES Aluno (idAluno)
    ON DELETE RESTRICT;
