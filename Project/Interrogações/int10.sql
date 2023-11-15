.mode columns
.headers on
.nullvalue NULL

drop view if exists CompraSemPromoção;

create view CompraSemPromoção as 
select CompraProduto.idCompra,sum(Quantidade*Preço) as PreçoAntigo
from CompraProduto,Produto,Compra
where CompraProduto.idProduto = Produto.idProduto and CompraProduto.idCompra = Compra.idCompra
group by CompraProduto.idCompra;

select distinct  Compra.idCompra,Compra.Data,Compra.Caixa,p1.Nome as Funcionário,p2.Nome as Cliente,PreçoAntigo,Compra.PreçoTotal as PreçoApósPromoção,round(PreçoAntigo-PreçoTotal,2) as Poupou
from CompraProduto,Produto,Compra,CompraSemPromoção,Pessoa as p1,Pessoa as p2
where Produto.idProduto in(
    select ProdutoPromoção.idProduto
    from ProdutoPromoção,Promoção
    where ProdutoPromoção.idPromoção = Promoção.idPromoção and Promoção.Nome = 'Promoção Natal'
) and CompraProduto.idProduto = Produto.idProduto and CompraProduto.idCompra = Compra.idCompra and CompraProduto.idCompra = CompraSemPromoção.idCompra
and p1.NIF = Compra.NIFStaff and p2.NIF = Compra.NIFCliente
order by Poupou desc;