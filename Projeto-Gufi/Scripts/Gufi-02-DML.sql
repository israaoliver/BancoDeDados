USE Gufi_Tarde 

INSERT INTO TiposUsuarios(TituloTipoUsuario)
VALUES ('Administrador'),('Comum');

INSERT INTO TiposEventos(TituloTipoEvento)
VALUES ('C#'),('React'),('SQL');

INSERT INTO Instituicoes(CNPJ,NomeFantasia,Endereco)
VALUES ('11111111111111','Escola SENAI de Informática','Alameda Barão de Limeira, 538');

INSERT INTO Usuarios(IdTipoUsuario,NomeUsuario, Email,Senha,Genero,DataNacimento)
VALUES (2,'Jailson Mendes','QuerUmSuquinho@email.com','LAranja','Masculino','06/02/2000');

INSERT INTO Eventos(IdInstituicao,IdTipoEvento,NomeEvento, DataEvento,Descricao,AcessoLivre)
VALUES	(1,1,'Introdução ao C#','07/02/2020','Conceitos sobre os pilares da programação orientada a objetos',1),
		(1,2,'Ciclo de vida','07/02/2020','Como utilizar o ciclo de vida com Reactjs',0),
		(1,3,'Optimização de banco de dados','07/02/2020','Aplicação de índices clusterizados e não clusterizados',1);


INSERT INTO Presencas(IdUsuario,IdEvento,Situacao)
VALUES	(2,2,'Agendada'),
		(2,3,'Confirmada'),
		(3,1,'Não conpareceu');


SELECT * FROM TiposUsuarios
SELECT * FROM TiposEventos
SELECT * FROM Eventos
SELECT * FROM Instituicoes
SELECT * FROM Presencas
SELECT * FROM Usuarios