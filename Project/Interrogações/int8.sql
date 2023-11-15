.mode columns
.headers on
.nullvalue NULL

select Nome,sum(PreçoTotal) as TotalGasto
from Compra,Pessoa
where Pessoa.NIF=Compra.NIFCliente
group by NIFCliente
order by TotalGasto desc;