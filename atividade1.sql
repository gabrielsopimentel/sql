create database db_rh;
use db_rh;

create table tb_colaboradores(
	id bigint identity(1,1),
	nome varchar(255) not null,
	cargo varchar(255),
	dataContrato date,
	salario decimal(7,2) not null,
	primary key(id)
);

insert into tb_colaboradores 
(nome, cargo, dataContrato, salario)
values
('aloisio', 'software developer intern', '2020-09-15', 1500.00),
('bruno', 'qa lead', '2020-09-15', 13500.00),
('claudio', 'principal engineer', '2020-09-15', 44500.00),
('danilo', 'staff engineer', '2020-09-15', 33500.00),
('ederaldo', 'ios developer intern', '2020-09-15', 1950.00);

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 1970 where id = 5;