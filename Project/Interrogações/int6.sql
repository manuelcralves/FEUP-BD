.mode columns
.headers on
.nullvalue NULL

select Produto.Nome, Preço, QuantidadeStock,Secção.Nome
from (Produto join TipoDeProduto using(idTipoDeProduto)) join Secção using(idSecção)
where Dimensão > 20