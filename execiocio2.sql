drop database estudantes;
create database estudantes;
use estudantes;


create table estudantes (
nome varchar (255) not null ,
email varchar (255),
altura decimal (3,2),
aprovado tinyint (1),
primary key (nome)
)engine = InnoDB;

show tables;
select * from estudantes;


insert into estudantes (nome,email,altura,aprovado)
values
('Arthur','arthur@gmail.com',1.67,1),
('marcos','marcos@gmail.com',1.59,0),
('mario','mario@gmail.com',1.87,0),
('augustinho','augustinh@gmail.com',1.78,0),
('beiçola','beiçoa@gmail.com',1.56,1);


select * from estudantes where aprovado > 0;
select nome,altura,aprovado from estudantes where aprovado > 1;
select nome,altura,aprovado from estudantes where aprovado = 0;
select nome,altura, aprovado from estudantes where aprovado != 0;
select nome,altura,aprovado from estudantes where aprovado <> 1;
select nome,altura, aprovado from estudantes where aprovado <= 1;
select nome,altura,aprovado from estudantes where aprovado < 1;
select nome,altura,aprovado from estudantes where aprovado >= 1;
select nome,altura,aprovado from estudantes where aprovado > 0;
select nome,altura,aprovado from estudantes where altura between 1.5 and 1.8;
select nome,altura, aprovado from estudantes where altura not between 1.5 and 1.8;
select nome,altura,aprovado from estudantes where altura like 'Arthur%';
select nome,altura,aprovado from estudantes where altura not like 'mario%';
select nome,altura,aprovado from estudantes where altura like '%marcos';
select nome,altura,aprovado from estudantes where altura like '%augustinho';
select nome,altura,aprovado from estudantes where altura in (1.74,1.94);
select nome,altura, aprovado from estudantes where altura not in (1.74,1.94);
select nome,altura, aprovado from estudantes where not altura = 0;
select nome,altura, aprovado from estudantes where ! (altura=1);

select nome,altura,aprovado from estudantes where altura > 1  
        && nome like 'Arthur%';
select nome,altura from estudantes where altura < 1  
        and nome like 'mario%';
select nome,altura from estudantes where altura < 1  
        or nome like 'augustinho%';
select nome,altura from estudantes where altura < 0 
        || nome like 'beiçola%';
select nome,altura from estudantes where altura < 0  
        xor nome like 'mario%';
select * from estudantes order by altura;
select * from estudantes order by aprovado desc, nome asc;





