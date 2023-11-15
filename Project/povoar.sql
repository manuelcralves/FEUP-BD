PRAGMA foreign_keys=ON;
--Inserir Pessoas
insert into Pessoa values('202472612','Tiago Barbosa',19,'M','Rua da Alegria 240','912345678');
insert into Pessoa values('218338228','Leandro Silva',40,'M','Avenida Felicidade 497','927573478');
insert into Pessoa values('237888963','Manuel Alves',25,'M','Avenida Municipal 108','946284272');
insert into Pessoa values('281686386','Rui Castro',87,'M','Rua Henrique Reis 94','949837647');
insert into Pessoa values('293103976','Joana Fonseca',16,'F','Rua do Relógio 1645','948274633');
insert into Pessoa values('285859137','Sara Carreira',65,'F','Travessa do Campo 90','929384750');
insert into Pessoa values('287560414','Marcelo Sousa',59,'M','Avenida Magalhães 2950','919283745');
insert into Pessoa values('262740893','Ana Paula',80,'F','Rua da Alegria 389','962890334');
insert into Pessoa values('252375394','José Campos',31,'M','Rua Losa 87','936400098');
insert into Pessoa values('260068519','Cristiano Lopes',29,'M','Rua do Campo 935','924938714');

insert into Pessoa values('208276785','André Soares',38,'M','Avenida da Boavista 39','926837485');
insert into Pessoa values('202636437','Sofia Morais',48,'F','Rua do Sorriso 346','920952837');
insert into Pessoa values('288270975','Andreia Sousa',79,'F','Rua da Cidade 13','920098663');
insert into Pessoa values('231014627','Tomás Gonçalves',67,'M','Rua do Relógio 289','930981112');
insert into Pessoa values('291488978','Maria Tavares',54,'F','Avenida do Porto 7989','968822553');
insert into Pessoa values('231961480','Patrícia Pinto',17,'F','Avenida da Boavista 456','930016752');
insert into Pessoa values('247643181','Marcelo Figueiredo',40,'M','Rua Secundária 56','960027345');

insert into Pessoa values('221612238','Mariana Cunha',24,'F','Travessa Principal 43','960926371');
insert into Pessoa values('211121720','Gonçalo Santos',50,'M','Rua Losa 245','911167933');
insert into Pessoa values('265280354','Rui Henriques',24,'M','Travessa Rural 6','923678804');

--Inserir Clientes
insert into Cliente values ('202472612',1);
insert into Cliente values ('218338228',2);
insert into Cliente values ('237888963',3);
insert into Cliente values ('281686386',4);
insert into Cliente values ('293103976',5);
insert into Cliente values ('287560414',6);
insert into Cliente values ('262740893',7);
insert into Cliente values ('260068519',8);

insert into Cliente values ('208276785',9);
insert into Cliente values ('202636437',10);
insert into Cliente values ('288270975',11);
insert into Cliente values ('231014627',12);
insert into Cliente values ('291488978',13);
insert into Cliente values ('231961480',14);
insert into Cliente values ('247643181',15);
insert into Cliente values ('211121720',16);


--Inserir Especialidades
insert into Especialidade (Nome,SalárioBase,CargaHorária) values ('Limpeza',600,40);
insert into Especialidade (Nome,SalárioBase,CargaHorária) values ('Reposição',900,48);
insert into Especialidade (Nome,SalárioBase,CargaHorária) values ('Gerente',2000,36);

--Inserir Staff
insert into Staff values ('202472612',1,'2020-09-17','2023-01-01','segunda-feira',2);
insert into Staff values ('285859137',2,'2017-03-26','2025-04-10','domingo',2);
insert into Staff values ('252375394',3,'2021-01-01','2023-08-01','sábado',3);
insert into Staff values ('260068519',4,'2021-11-08','2024-12-06','quarta-feira',1);
insert into Staff values ('221612238',5,'2018-12-10','2023-07-01','terça-feira',2);
insert into Staff values ('211121720',6,'2019-09-30','2023-09-01','segunda-feira',1);
insert into Staff values ('265280354',7,'2015-06-17','2024-11-19','sábado',2);

--Inserir Marcas
insert into Marca (Nome) values('Milaneza');
insert into Marca (Nome) values('Barilla');
insert into Marca (Nome) values('Matinados');
insert into Marca (Nome) values('Mimosa');
insert into Marca (Nome) values('Ristorante');
insert into Marca (Nome) values('Iglo');
insert into Marca (Nome) values('Pedras');
insert into Marca (Nome) values('Yoggi');
insert into Marca (Nome) values('Agromontenegro');
insert into Marca (Nome) values('Campofrio');
insert into Marca (Nome) values('Pantene');

--Inserir Secção
insert into Secção (Nome,Dimensão) values ('Mercearia',40.8);
insert into Secção (Nome,Dimensão) values ('Laticínios e Ovos',24.2);
insert into Secção (Nome,Dimensão) values ('Congelados',15.3);
insert into Secção (Nome,Dimensão) values ('Bebidas e Garrafeira',19.0);
insert into Secção (Nome,Dimensão) values ('Frutas e Legumes',36.1);
insert into Secção (Nome,Dimensão) values ('Charcutaria e Queijos',18.7);
insert into Secção (Nome,Dimensão) values ('Higiene e Beleza',10.3);

--Inserir TipoDeProduto
insert into TipoDeProduto (Nome,idSecção) values ('Massa',1);
insert into TipoDeProduto (Nome,idSecção) values ('Ovos',2);
insert into TipoDeProduto (Nome,idSecção) values ('Laticínio',2);
insert into TipoDeProduto (Nome,idSecção) values ('Pizza Congelada',3);
insert into TipoDeProduto (Nome,idSecção) values ('Refeição Congelada',3);
insert into TipoDeProduto (Nome,idSecção) values ('Bebida',4);
insert into TipoDeProduto (Nome,idSecção) values ('Fruta',5);
insert into TipoDeProduto (Nome,idSecção) values ('Legume',5);
insert into TipoDeProduto (Nome,idSecção) values ('Salsicha',6);
insert into TipoDeProduto (Nome,idSecção) values ('Fiambre',6);
insert into TipoDeProduto (Nome,idSecção) values ('Champô',7);

--Inserir Produtos
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Massa Esparguete',1.45,1.45,126,1,1);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Massa Cotovelos',1.75,1.75,98,2,1);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Ovos Biológicos Classe M',4.58,4.58,134,3,2);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Manteiga com Sal',1.49,1.49,79,4,3);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Pizza de Quatro Queijos',3.99,3.99,50,5,4);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Nuggets de Frango',3.99,3.99,68,6,5);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Água com Gás Limão',3.29,3.29,248,7,6);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Iogurte Líquido Morango',3.44,3.44,113,8,3);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Iogurte Líquido Banana',1.99,1.99,82,4,3);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Maçã Fuji',0.79,0.79,187,9,7);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Batata Vermelha',2.49,2.49,160,9,8);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Salsichas Frankfurt',0.79,0.79,45,10,9);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Fiambre Perna Extra',1.75,1.75,248,10,10);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Douradinhos',1.88,1.88,75,6,5);
insert into Produto (Nome,Preço,PreçoFinal,QuantidadeStock,idMarca,idTipoDeProduto) values ('Champô Anticaspa',4.99,4.99,76,11,11);


--Inserir Compras
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-17',2,0,'237888963','202472612');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-19',1,0,'218338228','202472612');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-21',3,0,'202472612','260068519');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-21',3,0,'237888963','260068519');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-23',1,0,'262740893','202472612');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-27',1,0,'293103976','285859137');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-29',2,0,'260068519','252375394');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-12-01',1,0,'287560414','285859137');

insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-10-27',1,0,'208276785','211121720');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-10-29',3,0,'202636437','221612238');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-01',2,0,'288270975','265280354');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-07',2,0,'231961480','265280354');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-12',3,0,'291488978','221612238');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-11-14',1,0,'231014627','211121720');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-12-09',1,0,'202636437','221612238');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-12-19',1,0,'211121720','252375394');
insert into Compra (Data,Caixa,PreçoTotal,NIFCliente,NIFStaff) values ('2022-12-29',1,0,'247643181','260068519');


--Inserir Promoção
insert into Promoção (Nome,Percentagem,DataInício,DataFim) values('Promoção Natal',0.25,'2022-11-25','2022-12-26');
insert into Promoção (Nome,Percentagem,DataInício,DataFim) values('Promoção Massas',0.1,'2022-11-01','2022-12-03');

--Inserir StaffSecção
insert into StaffSecção values('202472612',1);
insert into StaffSecção values('202472612',3);
insert into StaffSecção values('202472612',4);
insert into StaffSecção values('202472612',5);
insert into StaffSecção values('285859137',2);
insert into StaffSecção values('285859137',3);
insert into StaffSecção values('252375394',6);
insert into StaffSecção values('252375394',7);
insert into StaffSecção values('260068519',5);
insert into StaffSecção values('221612238',1);
insert into StaffSecção values('211121720',2);
insert into StaffSecção values('265280354',5);

--Inserir ProdutoPromoção
insert into ProdutoPromoção values(7,1);
insert into ProdutoPromoção values(8,1);
insert into ProdutoPromoção values(10,1);
insert into ProdutoPromoção values(12,1);
insert into ProdutoPromoção values(13,1);
insert into ProdutoPromoção values(1,2);
insert into ProdutoPromoção values(2,2);

--InserirCompraProduto
insert into CompraProduto values(1,1,2);
insert into CompraProduto values(1,8,4);
insert into CompraProduto values(1,14,1);

insert into CompraProduto values(2,2,1);
insert into CompraProduto values(2,3,5);
insert into CompraProduto values(2,15,1);
insert into CompraProduto values(2,6,2);

insert into CompraProduto values(3,4,6);

insert into CompraProduto values(4,7,5);
insert into CompraProduto values(4,9,1);

insert into CompraProduto values(5,12,3);
insert into CompraProduto values(5,13,4);
insert into CompraProduto values(5,14,2);
insert into CompraProduto values(5,15,1);

insert into CompraProduto values(6,5,2);

insert into CompraProduto values(7,10,1);
insert into CompraProduto values(7,11,3);

insert into CompraProduto values(8,1,1);
insert into CompraProduto values(8,2,4);
insert into CompraProduto values(8,6,2);
insert into CompraProduto values(8,10,3);
insert into CompraProduto values(8,13,1);

insert into CompraProduto values(9,1,1);
insert into CompraProduto values(9,8,7);
insert into CompraProduto values(9,4,2);
insert into CompraProduto values(9,10,3);

insert into CompraProduto values(10,15,1);
insert into CompraProduto values(10,12,4);

insert into CompraProduto values(11,1,1);
insert into CompraProduto values(11,11,3);
insert into CompraProduto values(11,4,2);
insert into CompraProduto values(11,15,1);
insert into CompraProduto values(11,6,6);
insert into CompraProduto values(11,3,1);
insert into CompraProduto values(11,13,2);

insert into CompraProduto values(12,10,5);
insert into CompraProduto values(12,3,2);

insert into CompraProduto values(13,14,3);
insert into CompraProduto values(13,2,10);
insert into CompraProduto values(13,8,6);

insert into CompraProduto values(14,4,4);

insert into CompraProduto values(15,10,3);
insert into CompraProduto values(15,7,7);
insert into CompraProduto values(15,13,2);

insert into CompraProduto values(16,4,1);
insert into CompraProduto values(16,14,4);
insert into CompraProduto values(16,15,1);
insert into CompraProduto values(16,5,3);

insert into CompraProduto values(17,12,3);

