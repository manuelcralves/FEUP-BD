PRAGMA foreign_keys = ON;

create trigger gatilho2
after insert on CompraProduto
begin
update Compra
set PreçoTotal = PreçoTotal + ((select PreçoFinal from Produto where New.idProduto = Produto.idProduto)* New.Quantidade)
where Compra.idCompra = New.idCompra;
end;