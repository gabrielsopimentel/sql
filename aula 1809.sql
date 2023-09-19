create database db_quitanda;

use db_quitanda;
create table tb_produtos(
	id bigint identity(1,1),
	nome varchar(255) not null,
	quantidade int,
	dataValidade date,
	preco decimal not null,
	primary key(id)
);

insert into tb_produtos
(nome, quantidade, dataValidade, preco)
values
('laranja', 20, '2023-09-18', 8.00);

insert into tb_produtos
(nome, quantidade, dataValidade, preco)
values
('maçã', 10, '2023-09-18', 15.25);

insert into tb_produtos
(nome, quantidade, dataValidade, preco)
values
('couve', 35, '2023-09-18', 5.00),
('banana', 25, '2023-09-18', 16.00);

select * from tb_produtos;

select * from tb_produtos where id = 1;
select * from tb_produtos where nome = 'banana';
select nome, quantidade, preco from tb_produtos where nome = 'banana';
select * from tb_produtos where id = 1 or id = 2 or id = 3;
select * from tb_produtos where preco > 4 and preco < 10;

alter table tb_produtos alter column preco decimal(6,2); 

insert into tb_produtos
(nome, quantidade, dataValidade, preco)
values
('milho', 20, '2023-09-18', 15.25);

alter table tb_produtos add descricao varchar(255);

update tb_produtos set descricao = 'milho verde natural' where id = 7;

delete from tb_produtos where id = 5;

select nome as 'nome do produto', descricao as 'descrição' from tb_produtos;