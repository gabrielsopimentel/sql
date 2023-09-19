create database cidade_dos_vegetais;
use cidade_dos_vegetais;

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
('frutos', 1),
('folhas', 1),
('flores', 1),
('tuberculos', 1),
('raizes', 1);

INSERT INTO tb_produtos (nome, quantidade, dtValidade, preco, categoria_id)
VALUES 
('abobrinha', 1000, '2022-03-07', 51.99, 1),
('berinjela', 1300, '2022-03-08', 55.00, 1),
('espinafre', 2000, '2022-03-09', 140.00, 2),
('alface', 300, '2022-03-10', 70.00, 2),
('brocolis', 1020, '2022-03-08', 58.00, 3),
('couve flor', 1000, '2022-03-07', 153.00, 3),
('batata doce', 1500, '2022-03-06', 30.00, 4),
('inhame', 1800, '2022-03-09', 39.50, 4),
('beterraba', 200, '2022-03-07', 65.49, 5),
('cenoura', 3000, '2022-03-13', 10.00, 5);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 50 and 150;
select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.tipo = 'frutos';