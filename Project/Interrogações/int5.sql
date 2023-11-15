.mode columns
.headers on
.nullvalue NULL

select Nome,Idade,Sexo,Morada,Telefone
from Pessoa
where NIF in
(select NIF 
from Cliente
INTERSECT
select NIF
from Staff)
order by Nome;

