CREATE DATABASE Gufi_Tarde
GO
USE Gufi_Tarde
GO
CREATE TABLE TiposUsuarios (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	TituloTipoUsuario VARCHAR(50) UNIQUE NOT NULL 
);

CREATE TABLE TiposEventos (
	IdTipoEvento INT PRIMARY KEY IDENTITY,
	TituloTipoEvento VARCHAR (255) UNIQUE NOT NULL
);


CREATE TABLE Instituicoes (
	IdInstituicao INT PRIMARY KEY IDENTITY,
	CNPJ CHAR(14) UNIQUE NOT NULL ,
	NomeFantasia VARCHAR(255) UNIQUE NOT NULL,
	Endereco VARCHAR(255) UNIQUE NOT NULL 
);

CREATE TABLE Usuarios (
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario),
	NomeUsuario VARCHAR (255) NOT NULL,
	Email VARCHAR (255) NOT NULL,
	Senha VARCHAR (255) NOT NULL,
	Genero VARCHAR (255) NOT NULL,
	DataNacimento DATETIME2 NOT NULL
);

CREATE TABLE Eventos (
	IdEvento INT PRIMARY KEY IDENTITY,
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicoes (IdInstituicao),
	IdTipoEvento INT FOREIGN KEY REFERENCES TiposEventos (IdTipoEvento),
	NomeEvento VARCHAR(255) NOT NULL,
	DataEvento DATETIME2 NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	AcessoLivre BIT DEFAULT (1) NOT NULL,
);

CREATE TABLE Presencas (
	IdPrecenca INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
	IdEvento INT FOREIGN KEY REFERENCES Eventos (IdEvento),
	Situacao VARCHAR (255) NOT NULL
);