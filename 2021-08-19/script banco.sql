create table BANCO( /*criar uma nova tabela*/
CNPJ bigint (14) not null, /*criar novo atributo para a tabela, com o tipo de variável especificado e seu tamanho*/
primary key (CNPJ) /*especificando a PK (tem que estar dentre os atributosss*/
);

create table AGENCIA(
nAgencia int(2) not null,
nomeAgencia varchar(50) not null,
endereco varchar(50) not null,
UF char(2) not null,
cidade varchar(50) not null,
telefone bigint(15) not null,
CNPJ bigint(8) not null,
primary key (nAgencia),
foreign key (CNPJ) references BANCO (CNPJ)/*especificando a FK (tem que ser um atributo da tabela, que referencia
 a PK de outra*/
);

create table CLIENTE(
codCliente int(5) not null,
nome varchar(50) not null,
endereco varchar(50) not null,
cidade varchar(50) not null,
UF char(2) not null,
telefone bigint(15) not null,
CPF bigint(12) not null,
RG bigint(8) not null,
primary key (codCliente)
);

create table CONTA(
nConta int(5) not null,
tipoConta varchar(50) not null,
saldoConta bigint(9) not null,
nAgencia int(2) not null,
codCliente int(5) not null,
primary key (nConta),
foreign key (nAgencia) references AGENCIA (nAgencia),
foreign key (codCliente) references CLIENTE (codCliente)
);

insert into agencia(nAgencia, nomeAgencia, endereco, UF, cidade, telefone, CNPJ)
values(1, "Agencia Centro", "Centro, rua Não sei Que Lá, 222", "SC", "Criciúma", 123, 1);

insert into agencia(nAgencia, nomeAgencia, endereco, UF, cidade, telefone, CNPJ)
values(2, "Agencia Próspera", "Próspera, rua Jardim, 4536", "SC", "Criciúma", 456, 1);

insert into agencia(nAgencia, nomeAgencia, endereco, UF, cidade, telefone, CNPJ)
values(3, "Agencia Rio Maina", "Rio Maina, rua Pedregulho, 12", "SC", "Criciúma", 789, 1);

insert into cliente(codCliente, nome, endereco, cidade, UF, telefone, CPF, RG)
values (2, "Pedro Henrique Martins Virtuozo", "Comerciário, rua Caçador, 327", "Criciúma", "SC", 5548996234350, 33344455521, 87654321); 

insert into cliente(codCliente, nome, endereco, cidade, UF, telefone, CPF, RG)
values (2, "Cristiane Pavei Fernandes", "Centro, rua Aranha, 397", "Criciúma", "SC", 5548999322355, 12332108758, 12345678); 

insert into cliente(codCliente, nome, endereco, cidade, UF, telefone, CPF, RG)
values (3, "Claubert Claubert", "Próspera, rua Pedregulho, 909", "Criciúma", "SC", 5548998085828, 07654178971, 13245768); 

insert into conta(nConta, tipoConta, saldoConta, nAgencia, codCliente)/*FKs: Pedro, Centro*/
values(1, "Normal", 322.56, 1, 1);

insert into conta(nConta, tipoConta, saldoConta, nAgencia, codCliente)/*FKs: Cris, Próspera*/
values(2, "Premium", 3456.97, 2, 2);

insert into conta(nConta, tipoConta, saldoConta, nAgencia, codCliente)/*FKs: Claubert, Rio Maina*/
values(3, "Ultra", 3456222.60, 3, 3);

create table gerente(
codGerente int(5) not null,
nome varchar(50) not null,
cargo varchar(50) not null,
salario float(10.2) not null,
primary key (codGerente)
);

alter table gerente add telefone bigint(15) not null;
alter table agencia add codGerente int(5) not null;

insert into gerente(codGerente, nome, cargo, salario, telefone)
values (1, "Carlos", "Gerente Contas", 3000.00, 1234);

insert into gerente(codGerente, nome, cargo, salario, telefone)
values (2, "Ana Maria", "Gerente Aplicação", 3500.00, 5678);

insert into gerente(codGerente, nome, cargo, salario, telefone)
values (3, "Antônio", "Gerente FGTS", 3000.00, 6789);

update gerente /*fazer update em atributos específicos*/
set telefone = 1122, /*coluna*/
salario = 3400.00 /*coluna*/
where codGerente = 2; /*onde a primary key é igual a 2*/ /*linha*/

update gerente
set telefone = 9100
where codGerente = 1;

update gerente
set salario = 3000
where codGerente = 2;

alter table gerente add atividade varchar(20) not null;

update gerente
set atividade = "ativo"; /*Sem restrição -> Todos ganham o valor*/
/*where codGerente in (1, 2, 3);*/

delete from gerente where codGerente = 3; /*Deletar na tabela gerente, a linha com a PK = 3*/