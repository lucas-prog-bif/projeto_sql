create database db_super_mercado;
use db_super_mercado;

create table tbl_cliente(
id int not null primary key auto_increment,
nome varchar(60) not null,
cpf varchar(45) not null,
rg varchar(45) not null
);

create table tb_email(
id int not null primary key auto_increment,
email varchar(200),
id_cliente int
);

create table tbl_telefone(
id int not null primary key auto_increment,
telefone varchar(45),
id_cliente int
);

create table tbl_endereco(
logradouro varchar(60),
bairro varchar(60),
estado varchar(60),
cep varchar(45),
pais varchar(30),
id_cliente int
);

create table tbl_produto(
id int not null primary key auto_increment,
nome_produto varchar(50) not null,
preco_produto decimal not null,
descricao_produto text,
estoque float,
id_cliente int
);

create table tbl_pedido(
id int not null primary key auto_increment,
numero_pedido varchar (50) not null,
id_cliente int
);

create table tbl_produto_pedido(
id int not null primary key auto_increment,
valor_compra decimal not null,
data_separacao date not null,
quantidade float,
id_pedido int,
id_produto int
);

create table tbl_fucionario(
id int not null primary key auto_increment,
nome_funcionario varchar(45) not null,
cargo varchar(45) not null,
id_pedido int
);



