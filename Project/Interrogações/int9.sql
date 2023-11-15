.mode columns
.headers on
.nullvalue NULL

select Produto.Nome as Produto,Marca.Nome as Marca,TipoDeProduto.Nome as TipoDeProduto,Promoção.Nome as Promoção,Promoção.Percentagem as Desconto,Produto.Preço as PreçoAnterior,Round(Preço-Preço*Percentagem,2) as PreçoApósPromoção,round(Preço*Percentagem,2) as Diferença
from Produto,Promoção,ProdutoPromoção,Marca,TipoDeProduto
where Produto.idProduto=ProdutoPromoção.idProduto and Promoção.idPromoção=ProdutoPromoção.idPromoção and Produto.idMarca = Marca.idMarca and Produto.idTipoDeProduto = TipoDeProduto.idTipoDeProduto
order by Diferença desc;