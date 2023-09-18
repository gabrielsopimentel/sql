create database db_e_commerce;
use db_e_commerce;

create table tb_produtos(
	id bigint identity(1,1),
	nome varchar(255) not null,
	descricao varchar(255),
	quantidade int,
	preco decimal(7,2)
);

insert into tb_produtos
(nome, descricao, quantidade, preco)
values
('iphone','celular', 15, 7000),
('samsung','celular', 10, 5000),
('jbl flip 6','caixa de som', 8, 300),
('jbl boom box','caixa de som', 4, 7000),
('teclado','hardware', 9, 400),
('monitor','hardware', 3, 800),
('televisão','eletronicos', 2, 700),
('guarda roupa','movel', 30, 900);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 6900 where id = 1;