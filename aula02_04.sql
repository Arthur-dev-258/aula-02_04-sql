drop database livraria;
create database livraria;
use livraria;
create table Aluno (
id integer not null,
nome varchar (255) not null ,
email varchar (255),
telefone varchar (255),
altura decimal (3,2),
primary key (id)
)engine = InnoDB;

select nome,email from Aluno;
select * from Aluno;

insert into Aluno (id,nome,email,telefone,altura)
values 
(1, 'joao pimentel','jpapim@gmail.com','9999-9999',1.74),
(2, 'joao da silva ','jpapim@gmail.com','9999-9999',1.74),
(3, 'joao paulo','jpapim@gmail.com','9999-9999',1.94),
(4, 'joao brito','jpapim@gmail.com','9999-9999',1.94),
(5, 'jose brito','jpapim@gmail.com','9999-9999',1.94);

select nome,altura from Aluno where altura > 1.80;
select nome,altura from Aluno where altura = 1.80;
select nome,altura from Aluno where altura != 1.80;
select nome,altura from Aluno where altura <> 1.80;
select nome,altura from Aluno where altura <= 1.80;
select nome,altura from Aluno where altura < 1.80;
select nome,altura from Aluno where altura =< 1.80;
select nome,altura from Aluno where altura > 1.80;
select nome,altura from Aluno where altura between 1.5 and 1.8;
select nome,altura from Aluno where altura not between 1.5 and 1.8;
select nome,altura from Aluno where nome like '%joao';
select nome,altura from Aluno where nome not like '%joao';
select nome,altura from Aluno where nome like '%paulo';
select nome,altura from Aluno where nome like '%da%';
select nome,altura from Aluno where altura in (1.74,1.94);
select nome,altura from Aluno where altura not in (1.74,1.94);
select nome,altura from Aluno where not altura = 1.80;
select nome,altura from Aluno where ! (altura=1.80);
select nome,altura from Aluno where altura < 1.80  
        && nome like 'joao%';
select nome,altura from Aluno where altura < 1.80  
        and nome like 'joao%';
select nome,altura from Aluno where altura < 1.80  
        or nome like 'joao%';
select nome,altura from Aluno where altura < 1.80  
        || nome like 'joao%';
select nome,altura from Aluno where altura < 1.80  
        xor nome like 'joao%';
select * from aluno order by altura;
select * from aluno order by altura desc, nome asc;



create table Professor (
id integer not null,
nome varchar (255) not null ,
email varchar (255),
telefone varchar (255),
altura decimal (3,2),
primary key (id)
)engine = InnoDB;

show tables;

 
insert into Professor (id,nome,email,telefone,altura)
values 
(1, 'josefa','jpapim@gmail.com','9999-9999',1.74),
(2, 'maria ','jpapim@gmail.com','9999-9999',1.74),
(3, 'rosa','jpapim@gmail.com','9999-9999',1.94);
 
 select Aluno.nome as 'Nome do aluno',
 Professor.nome as 'Nome do professor' from Aluno,Professor;
 
 --exercicio
 
 
create table estudantes (
id integer not null,
nome varchar (255) not null ,
email varchar (255),
altura decimal (3,2),
aprovado tinyint (1,0)
primary key (id)
)engine = InnoDB;

 
 