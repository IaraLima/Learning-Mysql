create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe(id_classe int auto_increment,  nome varchar(200),  skill_base varchar(200), skill_fatal varchar(200) , vidaMax bigint, primary key (id_classe));
create table tb_personagem (id_personagem int auto_increment, nome varchar(200), ataque bigint , defesa bigint , vida_atual bigint, xp bigint, classe int, primary key (id_personagem), foreign key (classe) references tb_classe(id_classe));

insert into tb_classe(nome, skill_base, skill_fatal, vidaMax) values ("mago", "mísses mágicos","bola de fogo",10);
insert into tb_classe(nome, skill_base, skill_fatal, vidaMax) values ("guerreiro", "socão","martelada",15);
insert into tb_classe(nome, skill_base, skill_fatal, vidaMax) values ("arqueiro", "flechada simples","chuva de flechas de fogo", 15);
insert into tb_classe(nome, skill_base, skill_fatal, vidaMax) values ("bruxa", "demonologia","destruição", 20);
insert into tb_classe(nome, skill_base, skill_fatal, vidaMax) values ("paladino", "Busca de justiça","Proclamação dos deuses", 15);


insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Vitor", 3500,2500,15,0,2);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Cris", 4000,1000,15,0,1);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Erick", 2000,4000,15,0,3);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Vitor1", 3500,2500,15,0,2);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Cris2", 4000,1000,15,0,1);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Erick3", 2000,4000,15,0,3);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Luis", 4000,1000,15,0,5);
insert into tb_personagem(nome, ataque, defesa, vida_atual, xp, classe) values ("Iara", 3000,2000,15,0,4);
update tb_personagem set nome="João", defesa=1500 where id_personagem=9;

select * from tb_personagem;

select * from tb_personagem where ataque>2000;

select * from tb_personagem where defesa>1000 and defesa<2000;

select * from tb_personagem where nome like "C%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe=tb_classe.id_classe;

select * from tb_personagem inner join tb_classe on tb_personagem.classe=tb_classe.id_classe where tb_classe.id_classe=3;

