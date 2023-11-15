.mode column
.headers on
PRAGMA foreign_keys=ON;
 drop table if exists Pessoa;
 drop table if exists Cliente;
 drop table if exists Staff;
 drop table if exists Especialidade;
 drop table if exists Produto;
 drop table if exists Marca;
 drop table if exists TipoDeProduto;
 drop table if exists Secção;
 drop table if exists Compra;
 drop table if exists Promoção;
 drop table if exists StaffSecção;
 drop table if exists ProdutoPromoção;
 drop table if exists CompraProduto;
 create table Pessoa (NIF Char(9) PRIMARY KEY NOT NULL, 
                        Nome Varchar(30) NOT NULL, 
                        Idade Integer NOT NULL CONSTRAINT IdadeVálida CHECK(Idade>=0), 
                        Sexo Char(1) NOT NULL CONSTRAINT SexoVálido CHECK(Sexo LIKE 'M' OR Sexo LIKE 'F'),
                         Morada Varchar(255) NOT NULL,
                         Telefone Char(9) UNIQUE);

 create table Cliente (NIF Char(9) PRIMARY KEY REFERENCES Pessoa on delete cascade on update cascade,
                         NrCliente Integer NOT NULL UNIQUE);

 create table Especialidade(idEspecialidade Integer PRIMARY KEY AUTOINCREMENT,
                             Nome Varchar(30) NOT NULL, 
                             SalárioBase Integer NOT NULL CONSTRAINT SalárioVálido CHECK (SalárioBase > 0), 
                             CargaHorária Integer NOT NULL CONSTRAINT CargaHoráriaVálida CHECK (CargaHorária > 0 AND CargaHorária <= 48));

 create table Staff (NIF Char(9) PRIMARY KEY REFERENCES Pessoa on delete cascade on update cascade,
                     NrFuncionario Integer NOT NULL UNIQUE,
                      InícioDeContrato Date NOT NULL , 
                      FimDeContrato Date, 
                      DiaDeFolga Varchar(13) NOT NULL CONSTRAINT DiaVálido CHECK(DiaDeFolga LIKE 'segunda-feira' OR DiaDeFolga LIKE 'terça-feira' OR DiaDeFolga LIKE 'quarta-feira' OR DiaDeFolga LIKE 'quinta-feira' OR DiaDeFolga LIKE 'sexta-feira' OR DiaDeFolga LIKE 'sábado' OR DiaDeFolga LIKE 'domingo'),
                      idEspecialidade Integer REFERENCES Especialidade on delete cascade on update cascade,
                      CONSTRAINT DataValida CHECK(FimDeContrato>=InícioDeContrato));
 create table Marca(idMarca Integer PRIMARY KEY AUTOINCREMENT,
                     Nome Varchar(30) NOT NULL);

 create table Secção(idSecção Integer PRIMARY KEY AUTOINCREMENT, 
                    Nome Varchar(30) NOT NULL,
                    Dimensão Float NOT NULL CONSTRAINT DimensãoVálida CHECK(Dimensão>0));

 create table TipoDeProduto(idTipoDeProduto Integer PRIMARY KEY AUTOINCREMENT, 
                            Nome Varchar(30) NOT NULL,
                            idSecção Integer REFERENCES Secção on delete cascade on update cascade);

 create table Produto(idProduto Integer PRIMARY KEY AUTOINCREMENT, 
                        Nome Varchar(50) NOT NULL,
                        Preço Float NOT NULL CONSTRAINT PreçoVálido CHECK (Preço>0),
                        PreçoFinal Float CONSTRAINT PreçoFinalVálido CHECK (PreçoFinal>=0),
                        QuantidadeStock Integer NOT NULL CONSTRAINT QuantidadeStockVálido CHECK (QuantidadeStock>=0),
                        idMarca Integer REFERENCES Marca on delete cascade on update cascade,
                        idTipoDeProduto Integer REFERENCES TipoDeProduto on delete cascade on update cascade);

 create table Compra(idCompra Integer PRIMARY KEY AUTOINCREMENT,
                     Data Date NOT NULL, 
                     Caixa Integer NOT NULL, 
                     PreçoTotal Float CONSTRAINT PreçoTotalVálido CHECK (PreçoTotal >= 0), 
                     NIFCliente Char(9) REFERENCES Cliente on delete cascade on update cascade, 
                     NIFStaff Char(9) REFERENCES Staff on delete cascade on update cascade);

 create table Promoção(idPromoção Integer PRIMARY KEY AUTOINCREMENT, 
                        Nome Varchar(50) NOT NULL, 
                        Percentagem Float NOT NULL CONSTRAINT PercentagemVálida CHECK (Percentagem>0 AND Percentagem<=1), 
                        DataInício Date NOT NULL, 
                        DataFim Date NOT NULL,
                        CONSTRAINT DatasVálidas CHECK(dataFim>=DataInício));

 create table StaffSecção(NIF Char(9) REFERENCES Staff on delete cascade on update cascade,
                            idSecção Integer REFERENCES Secção on delete cascade on update cascade,
                            PRIMARY KEY (NIF,idSecção));

 create table ProdutoPromoção(idProduto Integer REFERENCES Produto on delete cascade on update cascade,
                             idPromoção Integer REFERENCES Promoção on delete cascade on update cascade,
                             PRIMARY KEY (idProduto,idPromoção));
                             
 create table CompraProduto(idCompra Integer REFERENCES Compra on delete cascade on update cascade, 
                            idProduto Integer REFERENCES Produto on delete cascade on update cascade,
                            Quantidade Integer NOT NULL CONSTRAINT QuantidadeVálida CHECK (Quantidade>0),
                            PRIMARY KEY (idCompra,idProduto));
