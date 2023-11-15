.mode columns
.headers on
.nullvalue NULL


select Nome, NrFuncionario, InícioDeContrato , FimDeContrato
from Pessoa,Staff
where Pessoa.NIF = Staff.NIF and InícioDeContrato >= '2021-01-01'
order by InícioDeContrato;