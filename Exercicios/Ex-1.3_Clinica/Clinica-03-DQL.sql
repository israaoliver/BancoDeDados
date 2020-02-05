USE Clinica_Tarde

SELECT Pets.NomePet, Veterinarios.Nome as Nome_Veterinario, Atendimentos.DataAtendimento as Data_da_consulta, Pets.Telefone as Telefone_Dono_Pet
FROM Atendimentos
INNER JOIN Pets ON Pets.IdPet = Atendimentos.IdPet 
INNER JOIN Veterinarios ON Veterinarios.IdVeterinario = Atendimentos.IdVeterinario