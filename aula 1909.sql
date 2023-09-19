use db_quitanda;


select * from tb_produtos order by nome asc;

select * from tb_produtos order by preco desc;

select * from tb_produtos where not id = 1;

select * from tb_produtos where preco in(5,8,15) order by nome asc;

select * from tb_produtos where preco between 5 and 15;

select * from tb_produtos where nome like '%a%';

select count (*) as 'numero de linhas' from tb_produtos;

select sum(preco) as 'valor total dos produtos' from tb_produtos;

select avg(preco) as 'media dos produtos' from tb_produtos;

select max(preco) as 'maximo dos produtos' from tb_produtos;

select min(preco) as 'minimo dos produtos' from tb_produtos;

--relacionamento entre tabelas 

create table tb_categorias(
	id bigint identity(1,1),
	descricao varchar(255) not null,
	primary key(id)
);

INSERT INTO tb_categorias (Descricao)
VALUES ('Frutas');

INSERT INTO tb_categorias (Descricao)
VALUES ('Verduras');

INSERT INTO tb_categorias (Descricao)
VALUES ('Legumes');

INSERT INTO tb_categorias (Descricao)
VALUES ('Temperos');

INSERT INTO tb_categorias (Descricao)
VALUES ('Ovos');

INSERT INTO tb_categorias (Descricao)
VALUES ('Outros');


drop table tb_produtos;

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

select * from tb_categorias;
select * from tb_produtos;

insert into tb_produtos
(nome, quantidade, dtValidade, preco, categoria_id)
values
('Abacate', 45, '2023-09-22', 5.25, 1);

INSERT INTO tb_produtos (nome, quantidade, dtValidade, preco, categoria_id)VALUES ('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Cebola', 1020, '2022-03-08', 5.00, 3),('Ovo Branco', 1000, '2022-03-07', 15.00, 5),('Agrião', 1500, '2022-03-06', 3.00, 2),('Cenoura', 1800, '2022-03-09', 3.50, 3),('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;select tb_produtos.id, nome, quantidade, dtValidade, preco, categoria_id, descricao from tb_categorias left join tb_produtoson tb_categorias.id = tb_produtos.categoria_id;insert into tb_produtos(nome, quantidade, preco)values('panela', 1118, 150.80);select tb_produtos.id, nome, quantidade, dtValidade, preco, categoria_id, descricao from tb_categorias right join tb_produtoson tb_categorias.id = tb_produtos.categoria_idwhere nome like '%n%' order by tb_categorias.id asc;