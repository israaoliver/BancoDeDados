use pclinicsTarde;

create trigger TRG_INSERT 
on Atendimento 
after insert
as
select * from inserted;

drop  trigger TRG_INSERT;

create trigger TRG_FOR 
on Atendimento 
FOR insert
as
select * from inserted;







