CREATE DATABASE Bliblioteca_TARDE

USE Bliblioteca_TARDE



CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) UNIQUE
);

CREATE TABLE Autores(
	 IdAutor INT PRIMARY KEY IDENTITY,
	 Nome VARCHAR(50),
);

CREATE TABLE Livros(
	IdLivro INT PRIMARY KEY IDENTITY,
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor),
	Titulo VARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;


INSERT INTO Generos (Nome)
VALUES ('Aventura'),
	('Terror'),
	('Fic��o Ci�ntifica'),
	('Romance'),
	('Fic��o Fantastica');

INSERT INTO Autores (Nome)
VALUES ('J.R.R. Tolkien'),
	('George R.R. Martin'),
	('Patrick Rothfuss'),
	('John Scalzi'),
	('Christina Lauren'),
	('Stephen King');

INSERT INTO Autores (Nome)
VALUES ('Christina Lauren');

INSERT INTO Livros (IdGenero, IdAutor, Titulo)
VALUES (3,4,'Guerra do Velho'),
	(5,2,'Game of Thrones'),
	(2,6,'It: A Coisa'),
	(5,3,'O Nome do Vento'),
	(4,5,'Apenas Amigos');

UPDATE Generos
SET Nome = 'Fic��o Aventura'
WHERE IdGenero = 5;

UPDATE Livros
SET IdGenero = 2
WHERE IdLivro = 2;

DELETE FROM Autores
WHERE IdAutor = 7;