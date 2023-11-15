.mode columns
.headers on
.nullvalue NULL

select idCompra,p1.Nome as Nome_Funcionário,p2.Nome as Nome_Cliente, Data , PreçoTotal
from Compra, Pessoa as p1, Pessoa as p2 
where PreçoTotal >=20 and p1.NIF = Compra.NIFStaff and p2.NIF = Compra.NIFCliente
order by PreçoTotal desc;
