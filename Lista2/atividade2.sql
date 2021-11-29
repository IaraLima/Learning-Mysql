create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(id_categoria int auto_increment, tamanho varchar(200), doce boolean, salgada boolean);
create table tb_pizza(id_pizza int auto_increment, sabor varchar(200), descricao varchar(200) , preco decimal(6,2) , vida_atual bigint, xp bigint, classe int, primary key (id_personagem), foreign key (classe) references tb_classe(id_classe));

