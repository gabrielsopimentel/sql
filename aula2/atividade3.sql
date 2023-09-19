create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint identity(1,1),
	tipo varchar(255),
	ativa bit,
	primary key(id)
);

create table tb_produtos(
	id bigint identity(1,1),
	nome varchar(255) not null,
	quantidade int,
	dtValidade date,
	preco decimal(6,2),
	primary key(id),
	categoria_id bigint,
	foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias(tipo, ativa)
values
('remedio', 1),
('perfume', 1),
('comida', 1),
('bebida', 1),
('higiene', 1);

INSERT INTO tb_produtos (nome, quantidade, dtValidade, preco, categoria_id)
VALUES ('cloroquina', 9999, '2022-03-07', 99.99, 1),
('Anfetamina', 1300, '2022-03-08', 550.00, 1),
('Belatacepte', 2000, '2022-03-09', 109.00, 1),
('Danazol', 300, '2022-03-10', 700.00, 1),
('Estradiol', 1020, '2022-03-08', 5000.00, 1),
('Fexofenadina', 1000, '2022-03-07', 1500.00, 1),
('desodorante', 1500, '2022-03-06', 30.00, 2),
('bala', 1800, '2022-03-09', 3.50, 3),
('pastilha', 1100, '2022-03-15', 10.00, 3),
('energetico', 130, '2022-03-10', 5.00, 4),
('salgadinho', 200, '2022-03-07', 5.49, 3),
('alcool em gel', 3000, '2022-03-13', 10.00, 5);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 5 and 60;
select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.tipo = 'higiene';