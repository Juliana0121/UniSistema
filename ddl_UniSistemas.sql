CREATE schema uni_Sistema;

USE uni_Sistema;

CREATE TABLE Estudiante (
    ID_Estudiante INT NOT NULL AUTO_INCREMENT,
    Nombre_Estudiante VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (ID_Estudiante)
);

CREATE TABLE Docente (
    ID_Docente INT NOT NULL AUTO_INCREMENT,
    Docente VARCHAR(250) NOT NULL UNIQUE,
    PRIMARY KEY (ID_Docente)
);

CREATE TABLE Aula (
    ID_Aula INT NOT NULL AUTO_INCREMENT,
    Aula VARCHAR(250) NOT NULL UNIQUE,
    PRIMARY KEY (ID_Aula)
);

CREATE TABLE Curso (
    ID_Curso INT NOT NULL AUTO_INCREMENT,
    Curso VARCHAR(255) NOT NULL UNIQUE,
    ID_Docente INT NOT NULL,
    ID_Aula INT NOT NULL,
    PRIMARY KEY (ID_Curso),
    FOREIGN KEY (ID_Docente) REFERENCES Docente(ID_Docente),
    FOREIGN KEY (ID_Aula) REFERENCES Aula(ID_Aula)
);

CREATE TABLE Matriculado (
    ID_Matriculado INT NOT NULL AUTO_INCREMENT,
    ID_Estudiante INT NOT NULL,
    ID_Curso INT NOT NULL,
    PRIMARY KEY (ID_Matriculado),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiante(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Horario (
    ID_Horario INT NOT NULL AUTO_INCREMENT,
    Horario TIME NOT NULL,
    PRIMARY KEY (ID_Horario)
);

CREATE TABLE Dia (
    ID_Dia INT NOT NULL AUTO_INCREMENT,
    Dia VARCHAR(250) NOT NULL UNIQUE,
    PRIMARY KEY (ID_Dia)
);

CREATE TABLE Dia_Horario (
    ID_Dia_Horario INT NOT NULL AUTO_INCREMENT,
    ID_Horario INT NOT NULL,
    ID_Dia INT NOT NULL,
    PRIMARY KEY (ID_Dia_Horario),
    FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario),
    FOREIGN KEY (ID_Dia) REFERENCES Dia(ID_Dia)
);

ALTER TABLE Curso
ADD COLUMN ID_Horario INT NOT NULL,
ADD FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario);