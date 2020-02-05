CREATE DATABASE ECommerce_Tarde
USE ECommerce_Tarde

CREATE TABLE Lojas (
	IdLoja INT PRIMARY KEY IDENTITY,
	Nome_Loja VARCHAR(50)
);

CREATE TABLE Categorias (
	IdCategoria INT PRIMARY KEY IDENTITY,
	IdLoja INT FOREIGN KEY REFERENCES Lojas (IdLoja),
	Titulo_Categoria VARCHAR(50)
);




CREATE TABLE SubCategorias(
	IdSubCategoria INT PRIMARY KEY IDENTITY,
	IdCategoria INT FOREIGN KEY REFERENCES Categorias (IdCategoria),
	Nome_SubCategoria VARCHAR(50)
);

CREATE TABLE Produtos (
	IdProduto INT PRIMARY KEY IDENTITY,
	IdSubCategoria INT FOREIGN KEY REFERENCES SubCategorias (IdSubCategoria),
	Nome_Produto VARCHAR(50),
	Valor FLOAT
);

CREATE TABLE Clientes (
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50)
);

CREATE TABLE Pedidos (
	IdPedido INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Clientes (IdCliente),
	NrPedido VARCHAR(50),
	DataPedido	DATE,
	Status_Pedido VARCHAR(20)
);

CREATE TABLE PedidosProdutos(
		IdPedidoProduto INT PRIMARY KEY IDENTITY,
		IdPedido INT FOREIGN KEY REFERENCES Pedidos (IdPedido),
		IdProduto INT FOREIGN KEY REFERENCES Produtos (IdProduto),
);