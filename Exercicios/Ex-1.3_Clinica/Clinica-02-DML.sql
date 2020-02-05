USE Clinica_Tarde
GO

INSERT INTO Clinicas (RazaoSocial, Endereco)
VALUES ('Clinica veterinaria','Alameda Barão de Limeira, 532');

INSERT INTO Veterinarios (IdClinica, Nome, CRMV)
VALUES (1,'Pablo',235),
	(1,'Geoavana',345),
	(1,'Carlos',567);

INSERT INTO Donos(Nome)
VALUES ('João'),
	('Marina'),
	('Felipe'),
	('Gabriel'),
	('Erique');

INSERT INTO TipoPet(Titulo)
VALUES ('Cachorro'),
	('Gato'),
	('Cobra'),
	('Elefante'),
	('Leão');

INSERT INTO Racas(IdTipoPet, Titulo)
VALUES (5,'Albino'),
	(3,'Siames'),
	(2,'Perça'),
	(4,'Arabico'),
	(1,'Labrador');



INSERT INTO Pets(IdDono, IdRaca, NomePet, Telefone)
VALUES (1,5,'Beach','2345678932'),
	(3,2,'Floquinho','7827362178'),
	(4,4,'Grandão','8372738172'),
	(5,2,'Vira','3823237711'),
	(2,1,'Taai','4237112873');

INSERT INTO Atendimentos(IdVeterinario, IdPet, DataAtendimento, Observacoes)
VALUES (1,1,'23/02/2020','Tudo em ordem'),
	(2,4,'30/09/2018','Doença grave detectada'),
	(3,3,'04/05/2019','E isso ae mesmo'),
	(3,2,'02/01/2020','Tudo em ordem');


