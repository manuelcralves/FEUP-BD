PRAGMA foreign_keys = ON;

create trigger gatilho1
after insert on ProdutoPromoção
for each row
begin
update Produto
set PreçoFinal = round(PreçoFinal * (1-(select Percentagem from Promoção where New.idPromoção = Promoção.idPromoção)),2)
where Produto.idProduto = New.idProduto;
end;
