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
SET Visualizacao= 578921
WHERE IdAlbum = 6;

DELETE FROM Albuns
Where IdAlbum = 2;


DELETE FROM Albuns
WHERE IdAlbum = 1
