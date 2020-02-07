USE Gufi_Tarde 

INSERT INTO TiposUsuarios(TituloTipoUsuario)
VALUES ('Administrador'),('Comum');

INSERT INTO TiposEventos(TituloTipoEvento)
VALUES ('C#'),('React'),('SQL');

INSERT INTO Instituicoes(CNPJ,NomeFantasia,Endereco)
VALUES ('11111111111111','Escola SENAI de Inform�tica','Alameda Bar�o de Limeira, 538');

INSERT INTO Usuarios(IdTipoUsuario,NomeUsuario, Email,Senha,Genero,DataNacimento)
VALUES (2,'Jailson Mendes','QuerUmSuquinho@email.com','LAranja','Masculino','06/02/2000');

INSERT INTO Eventos(IdInstituicao,IdTipoEvento,NomeEvento, DataEvento,Descricao,AcessoLivre)
VALUES	(1,1,'Introdu��o ao C#','07/02/2020','Conceitos sobre os pilares da programa��o orientada a objetos',1),
		(1,2,'Ciclo de vida','07/02/2020','Como utilizar o ciclo de vida com Reactjs',0),
		(1,3,'Optimiza��o de banco de dados','07/02/2020','Aplica��o de �ndices clusterizados e n�o clusterizados',1);


INSERT INTO Presencas(IdUsuario,IdEvento,Situacao)
VALUES	(2,2,'Agendada'),
		(2,3,'Confirmada'),
		(3,1,'N�o conpareceu');


SELECT * FROM TiposUsuarios
SELECT * FROM TiposEventos
SELECT * FROM Eventos
SELECT * FROM Instituicoes
SELECT * FROM Presencas
SELECT * FROM Usuarios