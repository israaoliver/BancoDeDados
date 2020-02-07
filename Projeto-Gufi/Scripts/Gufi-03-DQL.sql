USE Gufi_Tarde

SELECT Usuarios.NomeUsuario, Usuarios.Email, TiposUsuarios.TituloTipoUsuario as Tipo, Usuarios.DataNacimento, Usuarios.Genero
FROM Usuarios INNER JOIN TiposUsuarios ON Usuarios.IdTipoUsuario = TiposUsuarios.IdTipoUsuario;

SELECT Instituicoes.CNPJ, Instituicoes.NomeFantasia, Instituicoes.Endereco FROM Instituicoes;


SELECT TituloTipoEvento as Tipo_de_Evento FROM TiposEventos

SELECT Eventos.NomeEvento, TiposEventos.TituloTipoEvento as Tipo_Evento, Eventos.DataEvento, Eventos.AcessoLivre as Pub_Priv , Eventos.Descricao, Instituicoes.NomeFantasia as NomeInstituicao, Instituicoes.Endereco
FROM Eventos INNER JOIN TiposEventos ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento 
INNER JOIN Instituicoes ON Instituicoes.IdInstituicao = Eventos.IdInstituicao

SELECT Eventos.NomeEvento, TiposEventos.TituloTipoEvento as Tipo_Evento, Eventos.DataEvento, Eventos.AcessoLivre as Pub_Priv , Eventos.Descricao, Instituicoes.NomeFantasia as NomeInstituicao, Instituicoes.Endereco
FROM Eventos INNER JOIN TiposEventos ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento 
INNER JOIN Instituicoes ON Instituicoes.IdInstituicao = Eventos.IdInstituicao
WHERE Eventos.AcessoLivre = 1

SELECT Usuarios.NomeUsuario, Usuarios.Email, Eventos.NomeEvento, TiposEventos.TituloTipoEvento as Tipo_Evento, Eventos.DataEvento, Eventos.AcessoLivre as Pub_Priv , Eventos.Descricao, Instituicoes.NomeFantasia as NomeInstituicao, Instituicoes.Endereco
FROM Eventos INNER JOIN Presencas ON Presencas.IdEvento = Eventos.IdEvento
INNER JOIN TiposEventos ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento
INNER JOIN Instituicoes ON Instituicoes.IdInstituicao = Eventos.IdInstituicao
INNER JOIN Usuarios ON Usuarios.IdUsuario = Presencas.IdUsuario
WHERE Usuarios.IdUsuario = 2

--Extras



SELECT Usuarios.NomeUsuario, Usuarios.Email, Eventos.NomeEvento, TiposEventos.TituloTipoEvento as Tipo_Evento, Eventos.DataEvento, Eventos.AcessoLivre as Pub_Priv , Eventos.Descricao, Instituicoes.NomeFantasia as NomeInstituicao, Instituicoes.Endereco
FROM Eventos INNER JOIN Presencas ON Presencas.IdEvento = Eventos.IdEvento
INNER JOIN TiposEventos ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento
INNER JOIN Instituicoes ON Instituicoes.IdInstituicao = Eventos.IdInstituicao
INNER JOIN Usuarios ON Usuarios.IdUsuario = Presencas.IdUsuario
WHERE Usuarios.IdUsuario = 2 AND Presencas.Situacao = 'Confirmada'

-- Troca o 1 por Publico
Select case when Eventos.AcessoLivre = 1 then 'Publico' else 'Privado' end as 'Acesso' from Eventos;

-- exemplo de como funciona
SELECT Eventos.NomeEvento, TiposEventos.TituloTipoEvento as Tipo_Evento, Eventos.DataEvento,case when Eventos.AcessoLivre = 1 then 'Publico' else 'Privado' end as 'Acesso' , Eventos.Descricao, Instituicoes.NomeFantasia as NomeInstituicao, Instituicoes.Endereco
FROM Eventos INNER JOIN TiposEventos ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento 
INNER JOIN Instituicoes ON Instituicoes.IdInstituicao = Eventos.IdInstituicao
WHERE Eventos.AcessoLivre = 1

SELECT * FROM Usuarios


SELECT Usuarios.NomeUsuario, Usuarios.Genero, FLOOR(DATEDIFF(DAY, Usuarios.DataNacimento, GETDATE()) / 365.25) as Idade
FROM Usuarios;








