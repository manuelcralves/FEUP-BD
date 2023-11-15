.mode columns
.headers on
.nullvalue NULL

select Nome, count(*) as NrCompras
from Compra, Pessoa
where Compra.NIFStaff = Pessoa.NIF
group by Pessoa.NIF
order by NrCompras desc, Nome;
