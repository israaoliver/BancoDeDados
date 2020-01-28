--COMENTARIO
--CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde;

USE Biblioteca_Tarde;

Create Table Autores (
     IdAutor INT PRIMARY KEY IDENTITY,
	 NomeAutor VARCHAR(200) NOT NULL
	 );
Create Table Generos (
     IdGenero INT PRIMARY KEY IDENTITY,
	 NomeGenero VARCHAR(200) NOT NULL
	 );

Create Table Livros (
     IdLivro INT PRIMARY KEY IDENTITY,
	 IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor) ,
	 IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	 Titulos VARCHAR(200)
	 );


SELECT * FROM Generos;
SELECT * FROM Livros;
SELECT * FROM Autores;

--Comando ALTERAR ADICIONAR NOVA COLUNA 
	ALTER TABLE Generos
	ADD Descricao VARCHAR(255);

-- ALTERAR TIPO DE DADO
	ALTER TABLE Generos
	ALTER COLUMN Descricao CHAR(100);

-- ALTERAR EXCLUIR COLUNA
	ALTER TABLE Generos
	DROP COLUMN Descricao;

-- Excluir
	DROP TABLE Generos;
	DROP TABLE Livros;

-- Excluir Banco de Dados

DROP DATABASE Biblioteca_Tarde

USE EstilosMusicais
