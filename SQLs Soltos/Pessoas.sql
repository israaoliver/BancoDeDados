CREATE DATABASE Pessoas_Tarde

USE Pessoas_Tarde
CREATE TABLE Pessoas (
	IdPessoa INT PRIMARY KEY IDENTITY,
	NomePessoa VARCHAR(100),
	Cpf CHAR(11)
);

ALTER TABLE Pessoas
ADD Cpf CHAR(11);

CREATE TABLE Emails (
	IdEmail INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoas (IdPessoa),
	Email VARCHAR(100)
);

CREATE TABLE Telefones (
	IdTelefone INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoas (IdPessoa),
	Telefone VARCHAR(15)
);

CREATE TABLE CNHs (
	IdCNH INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoas (IdPessoa),
	NumeroCNH CHAR(12),
	Validade DATE,

);


INSERT INTO Pessoas (NomePessoa, Cpf)
VALUES ('João da Silva','82737465182'),
	('Saulo Men','28192345678'),
	('Marcelo Silvera','45678923458'),
	('Rodrigo Ribeiro','23145678912'),
	('Marcus Lima','98271623465');

SELECT * FROM Pessoas
SELECT * FROM Emails

INSERT INTO Emails (IdPessoa, Email)
VALUES (1,'Jojo@gmail.com'),
	(2,'SaMen@hotmail.com'),
	(3,'MahSilve@bool.com'),
	(4,'RohRoBeiro@yahoo.com'),
	(5,'MarcusDABARRA@bool.com'),
	(3,'Rodrigo_Ribeiro2020@icloud.com');

INSERT INTO Telefones (IdPessoa, Telefone)
VALUES (1, '923451234'),
	(2,'987213456'),
	(3,'983457619'),
	(4,'987128923'),
	(5,'987348722');

	INSERT INTO CNHs(IdPessoa, NumeroCNH, Validade)

