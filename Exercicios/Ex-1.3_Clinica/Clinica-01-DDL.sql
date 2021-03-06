CREATE DATABASE Clinica_Tarde;

Use Clinica_Tarde;

CREATE TABLE Clinicas (
	IdClinica INT PRIMARY KEY IDENTITY,
	RazaoSocial VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL
);

CREATE TABLE Donos(
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Telefone INT NOT NULL 
);

CREATE TABLE TipoPet(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(50)
);

CREATE TABLE Veterinarios (
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinicas (IdClinica),
	Nome VARCHAR(50) NOT NULL ,
	CRMV INT NOT NULL
);

CREATE TABLE Pets (
	IdPet INT PRIMARY KEY IDENTITY,
	IdDono INT FOREIGN KEY REFERENCES Donos (IdDono),
	IdRaca INT FOREIGN KEY REFERENCES Racas (IdRaca),
	NomePet VARCHAR(50) NOT NULL,
);

CREATE TABLE Racas(
	IdRaca INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet (IdTipoPet),
	Titulo VARCHAR(50)
);

CREATE TABLE Atendimentos (
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinarios (IdVeterinario),
	IdPet INT FOREIGN KEY REFERENCES Pets (IdPet),
	DataAtendimento DATE NOT NULL,
	Observacoes VARCHAR(250)
);

ALTER TABLE Donos
DROP COLUMN Telefone

SELECT * FROM Pets;

Alter table Pets
Add Telefone VARCHAR(15); 
