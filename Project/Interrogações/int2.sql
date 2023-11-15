.mode columns
.headers on
.nullvalue NULL

select avg(Idade) as Idade_média
from Cliente,Pessoa
where Cliente.NIF = Pessoa.NIF and Telefone LIKE '92%';
