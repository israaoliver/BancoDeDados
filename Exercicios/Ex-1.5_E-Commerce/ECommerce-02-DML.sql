USE ECommerce_Tarde 

INSERT INTO Lojas (Nome_Loja)
VALUES ('SenaiShop');

INSERT INTO Categorias (IdLoja,Titulo_Categoria)
VALUES (1,'Cursos'),
	(1,'Acessorios');

INSERT INTO	SubCategorias(IdCategoria,Nome_SubCategoria)
VALUES (1,'Inform�tica B�sica'),
	(1,'Desenvolvimento'),
	(2,'Meio Ambiente'),
	(2,'Camisetas');

INSERT INTO Produtos(IdSubCategoria,Nome_Produto,Valor)
VALUES (3,'Copo para Caf�',25.00),
	(4,'Jaqueta',100.00),
	(1,'Excel B�sico',350.00),
	(2,'C#',700.00);
