USE  Locadora_Tarde

SELECT Clientes.Nome as NomeCliente, Modelo.Titulo as ModeloVeiculo, Veiculos.Placa as Placa_do_Veiculo, Alugueis.DataAluguel as Data_de_Retirada, Alugueis.DataDevolucao as Data_de_Devolcao 
FROM Alugueis INNER JOIN Clientes ON Clientes.IdCliente = Alugueis.IdCliente
INNER JOIN Veiculos ON Veiculos.IdVeiculo = Alugueis.IdVeiculo
INNER JOIN Modelo ON Modelo.IdModelo = Veiculos.IdModelo