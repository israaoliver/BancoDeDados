USE Locadora_Tarde

INSERT INTO Clientes (Nome, Telefone, Email, Endereço, Cpf)
VALUES ('Alberto', '18272817', 'AlbertoShow@bool.com', 'Rua Do Mal, 69','23457638291'),
	('Sevione','98271628','SevioneEahr@hotmail.com','Rua do Bem, 10','12873476859');

INSERT INTO Marcas (Titulo)
VALUES ('Fiat'),
	('Renault'),
	('Crevolet'),
	('Volkswagem'),
	('Honda');

INSERT INTO Modelo (IdMarca, Titulo)
VALUES (4,'Polo'),
	(4,'Jetta'),
	(5,'Fit'),
	(1,'Mobi'),
	(2,'Onix');

INSERT INTO Veiculos (IdModelo, AnoVeiculo, Placa)
VALUES (5,'2020','RED3456'),
	(2,'2018','FRE2819'),
	(1,'2017','GRE9034'),
	(3,'2016','LDP6754');

INSERT INTO Alugueis(IdCliente, IdVeiculo, DataAluguel,DataDevolucao)
VALUES (2,7,'20/01/2020','30/01/2020'),
	(1,8,'22/01/2020','30/01/2020'),
	(1,7,'10/01/2020','02/02/2020'),
	(2,9,'10/01/2020','20/02/2020');