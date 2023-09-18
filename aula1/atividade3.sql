create database db_escola;
use db_escola;

create table tb_estudantes(
	id bigint identity(1,1),
	nome varchar(255),
	idade int,
	turma varchar(255),
	nota decimal(3,2)
);

insert into tb_estudantes
(nome, idade, turma, nota)
values
('allan',25, '7b', 8.00),
('duda',29, '4a', 6.00),
('laura',18, '8c', 9.00),
('clara',15, '9r', 1.00),
('fran',14, '4a', 5.00),
('olavo',19, '9e', 6.00),
('orlando',11, '6a', 4.00),
('cleyton',16, '8a', 3.00);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

select * from tb_estudantes

update tb_estudantes set idade = 20 where id = 5;