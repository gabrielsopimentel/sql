create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id bigint identity(1,1),
	tipo varchar(255),
	passiva int,
	primary key(id)
);

create table tb_personagens(
	id bigint identity(1,1),
	nome varchar(255),
	skins varchar(255),
	poderDefesa int,
	poderAtaque int,
	classe_id bigint,
	foreign key(classe_id) references tb_classes(id)
);

insert into tb_classes(tipo, passiva)
values
('top', 1),
('jungle', 1),
('mid', 1),
('adc', 1),
('support', 1);

insert into tb_personagens(nome, skins, poderDefesa, poderAtaque, classe_id)
values
('vayne','ladra de almas',1000, 5000, 4),
('caitlyn','prestigio',900, 6000, 4),
('samira','gelida',1300, 3000, 4),
('taric','gemas',5000, 300, 5),
('evelynn','noturno',2100, 1000, 2),
('poppy','bronze',7000, 500, 1),
('anivia','gelida',2000, 3000, 3),
('zoe','curtindo o verão',500, 7000, 3);

select * from tb_personagens where poderAtaque > 2000

select * from tb_personagens where poderDefesa > 1000 and poderDefesa < 2000

select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id
where tb_classes.tipo = 'adc';