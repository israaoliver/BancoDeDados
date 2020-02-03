CREATE DATABASE OPTUS_TARDE;

--------- DML LINGUAGEM DE MANIPULAÇÃO DE DADOS --------------

USE OPTUS_TARDE

SELECT * FROM Estilos;
SELECT * FROM Albuns;
SELECT * FROM Artistas;
SELECT * FROM TiposUsuario;
SELECT * FROM Usuarios;

ALTER TABLE Albuns
Add QtdMinutos BIGINT;


---- COMANDO DE INSERIR DADOS ---

INSERT INTO Estilos (Nome)
VALUES ('Pagode') , ('Samba'), ('Rock');

INSERT INTO Artistas (Nome)
VALUES ('Anitta'),('Zeca Pagodinha'),('Pitty');
INSERT INTO Artistas (Nome)
VALUES ('Zeca Pagodinha');

INSERT INTO Albuns (IdArtista , IdEstilo, Nome, DataLancamento, Visualizacao, QtdMinutos)
VALUES (1,2,'Surubem','29/01/2020', 200001, 120);

INSERT INTO Albuns (IdArtista , IdEstilo, Nome, DataLancamento, Visualizacao, QtdMinutos)
VALUES (2,3,'Acontece','21/01/2020', 203101, 90),
(5,1,'Vida Boa','09/01/2020', 204501, 98),
(1,2,'Dançando','01/01/2020', 202321, 143);

UPDATE Artistas
SET Nome = 'Zeca Pagodinho'
WHERE IdArtista = 2;

------- DELETE PAPAGAR DADOS-------

DELETE FROM Artistas 
WHERE IdArtista = 4;

--Limpar todos os dados da tabela -----

TRUNCATE TABLE Albuns;


-------EXERCICIO

INSERT INTO Estilos (Nome)
VALUES ('Eletronica') , ('MPB'), ('FUNK');

INSERT INTO Artistas (Nome)
VALUES ('Mandragora'),('Vitor Kley'),('MC Brinquedo');

INSERT INTO Artistas (Nome)
VALUES ('Beatles');

INSERT INTO Albuns (IdArtista , IdEstilo, Nome, DataLancamento, Visualizacao, QtdMinutos)
VALUES (6,4,'MundoMandragora','23/06/2018', 300897, 60),
(8,6,'VaiVindo','23/01/2020', 210219, 98),
(1,2,'Dançando','12/11/2019', 123211, 143);

INSERT INTO TiposUsuario (Titulo)
VALUES ('ADM'),('COMUM'),('PREMIUM');

INSERT INTO Usuarios (IdTipoUsuario, Nome, Email, Senha)
VALUES (1,'ADM','ADM@email.com','132'),
(2,'Lucas Silvera','Luquinhas@bool.com','frezada'),
(3,'Matheus Neto','Neto@bool.com','Broken'),
(2,'Gabriel Silva','GabiSiilva@gmail.com','VAila'),
(3,'Mariana Drethy','MariDrey@hotmail.com','drethy');

UPDATE Usuarios
SET IdTipoUsuario= 3
WHERE IdUsuario= 2;

UPDATE Albuns
SET IdArtista= 9
WHERE IdAlbum = 8;

UPDATE Albuns 
SET IdEstilo = 1
WHERE IdAlbum = 1;

DELETE FROM Albuns
Where IdAlbum = 2;


DELETE FROM Albuns
WHERE IdAlbum = 1


CREATE TABLE TiposUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(50) NOT NULL
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuario (IdTipoUsuario),
	Nome VARCHAR(30)
);

CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30) NOT NULL
);

CREATE TABLE Albuns (
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo),
	Nome VARCHAR(50) NOT NULL,
	DataLancamento DATE ,
	QtdMinutos BIGINT,
	Visualizacao INT
);


CREATE TABLE Estilos (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50)
);



ALTER TABLE Usuarios 
ADD Email VARCHAR(50);

INSERT INTO Albuns (IdArtista , IdEstilo, Nome, DataLancamento, Visualizacao, QtdMinutos)
VALUES (9,3,'Sgt. Pepers Lonely heart Club Band','01/02/2020', 234901, 93);

INSERT INTO Albuns (IdArtista , IdEstilo, Nome, DataLancamento, Visualizacao, QtdMinutos)
VALUES (6,3,'Mudando Tudo','05/02/2020', 456921, 78);



----DQL LINGUAGEM DE CONSULTA DE DADOS

SELECT * FROM Albuns;
SELECT * FROM Usuarios;
SELECT * FROM Artistas;
SELECT * FROM Estilos;


--Selecionar diretamente um atributo

SELECT Nome FROM Artistas

SELECT Nome, DataLancamento FROM Albuns;

SELECT * FROM Albuns WHERE IdArtista= 1; 

--Operadores < > = 

SELECT  * From Albuns WHERE IdAlbum > 1;

-- OR OU  

SELECT Nome, QtdMinutos FROM Albuns
WHERE (DataLancamento IS NULL) OR (Visualizacao IS NULL);

--- LIKE  Comparacao de texto

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE 'Curtindo%'; -- Começo da frase

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE '%Curtindo'; -- Final da frase

SELECT IdAlbum, Nome FROM Albuns
WHERE Nome LIKE '%Curtindo%'; -- No meio da frase

--ORDENACAO

SELECT Nome FROM Albuns
ORDER BY Nome;

SELECT IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos;

--Ordenacao invertida (Do maior para o menor)

SELECT IdAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos DESC ;

--Ordenacao invertida (Do menor para o maior)

SELECT IdAlbum, Nome, QtdMinutos, DataLancamento FROM Albuns
ORDER BY DataLancamento ASC;

SELECT COUNT (IdAlbum) FROM Albuns;


--EXERCICIO 31/01

-- SELECIONAR OS ALBUNS DO MESMO ARTISTA 
SELECT * FROM Albuns WHERE IdArtista = 6;

-- USANDO INNER JOIN (JUNCAO DE DUAS OU MAIS TABELAS)
SELECT Artistas.Nome, Albuns.Nome FROM Artistas 
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista WHERE Albuns.IdArtista = 6

-- SELECIONAR OS ALBUNS LANÇADOS NA MESMA DATA
SELECT * FROM Albuns WHERE DataLancamento = '2020-02-01';

-- USANDO  INNER JOIN
SELECT * FROM Artistas
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista WHERE DataLancamento = '2020-02-01';

-- 



--(MAIS ANTIGO PARAMAIS RECENTE)
SELECT IdArtista , Nome , DataLancamento FROM Albuns 
ORDER BY DataLancamento ASC;

--COM JOIN
SELECT Artistas.Nome as NomeArtista, Albuns.Nome as NomeAlbum, Albuns.DataLancamento-- as se refere a apelido que eu quero atribuir
FROM Artistas 
INNER JOIN Albuns ON  Artistas.IdArtista = Albuns.IdArtista  -- a primeira tabela e a ponto
ORDER BY DataLancamento ASC

-- SELECIONAR ARTISTA DO MESMO ESTILO MUSICAL

SELECT Artistas.Nome as NomeArtista, Albuns.Nome as NomeAlbum, Estilos.Nome as EstiloAlbum FROM Albuns
INNER JOIN Artistas ON Artistas.IdArtista = Albuns.IdArtista 
INNER JOIN Estilos ON Estilos.IdEstilo = Albuns.IdEstilo WHERE Estilos.IdEstilo = 3

SELECT * FROM Albuns
SELECT * FROM Artistas
SELECT * FROM Estilos



