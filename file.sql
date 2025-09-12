/*Criando a base de dados*/
CREATE DATABASE bd_Unidade;
 
/*Usando a base de dados*/
USE bd_Unidade;

/*Criando uma tabela*/
 
create table Turma(
id_Turma int primary key auto_increment,
capacidade smallint not null check(capacidade < 41)
);
 
 
create table Professor(
id_Professor int primary key auto_increment,
nome varchar(150) not null
);
 
 
create table Telefone(
telefone int primary key,
id_Professor int,
foreign key (id_Professor) references Professor(id_Professor) 
);
 
 
create table Vinculo(
primary key(id_Turma, id_Professor),
id_Turma int,
id_Professor int,
foreign key (id_Turma) references Turma(id_Turma),
foreign key (id_Professor) references Professor(id_Professor)
);
 
/*Adicionando colunas em uma tabela existente*/
alter table Turma add sala tinyint not null;
alter table Turma add curso varchar(100) not null;
 
alter table Professor add rg int not null;
alter table Professor add cpf varchar(14) unique not null;
alter table Professor add sede char(2) not null check (sede = 'SP' or sede = 'RJ' or sede = 'SC' or sede = 'ES');
 
select * from Vinculo;
 
/*Excluindo colunas de uma tabela exitente*/
alter table Professor
drop column sede;
 
 
/*Criando a tabela aluno*/
create table Aluno(
matricula smallint primary key,
nome varchar(150) not null,
cpf bigint not null unique,
data_nasc date not null
);
 
/*Inserindo dados em uma tabela*/
insert into Aluno(matricula, nome, cpf, data_nasc) values
(12344, 'Bruna', 54123978456, '1999-06-10'),
(12343, 'Joana', 23487519485, '1997-01-27'),
(12345, 'Maria', 32165485264, '1992-04-25'),
(12346, 'Amanda', 17984698234, '1987-09-10'),
(12347, 'Paulo', 12479634258, '1998-12-15'),
(12348, 'Carlos', 12479845623, '2000-02-07'),
(12349, 'Thiago', 23197468524, '1996-10-04');
 
 
insert into Turma(capacidade, sala, curso) values
(20, 10, 'Contabilidade'),
(18, 4, 'Administração'),
(40, 6, 'Segurança do Trabalho'),
(25, 1, 'Informática'),
(12, 3, 'Recursos Humanos'),
(16, 7, 'Logística'),
(32, 5, 'Meio Ambiente'),
(22, 2, 'Engenharia'),
(10, 8, 'Enfermagem');
 
insert into Professor(nome, rg, cpf) values
('Maria Cristina', 12345678, '124.658.457-12'),
('Pedro Barbosa', 12345679, '985.632.748-25'),
('Marcelo dos Santos', 12345677, '124.875.963-17'),
('Beatriz Soares', 12345676, '241.859.412-74'),
('Camila Costa', 12345675, '985.475.852-41'),
('João Victor', 12345674, '541.965.785-84'),
('Thiago da Silva', 12345673, '257.627.834-25'),
('Leonardo Pereira', 12345672, '234.481.953-57'),
('Luciano Gonçalves', 12345671, '541.965.785-81'),
('Antônio da Silva', 12345610, '412.975.325-98');
 
 
insert into Vinculo(id_turma, id_professor) values
(4, 3),
(2, 7),
(6, 6),
(1, 5),
(5, 3),
(4, 5),
(7, 1),
(3, 8),
(6, 2),
(9, 10),
(5, 9),
(3, 10);
 
 
insert into Telefone(id_professor, telefone) values
(1, 58749645),
(2, 47186574),
(2, 68749582),
(3, 63748129),
(4, 24831974),
(4, 28469713),
(4, 97412846),
(5, 85467193),
(6, 28774962),
(7, 74238945),
(8, 12479643),
(8, 64254125),
(9, 56485314),
(9, 21456977),
(10, 21547859);
 
/*Visualizando dados de uma tabela completa*/
select * from Aluno;
select * from Turma;
select * from Professor;
select * from Vinculo;
select * from Telefone;
 
 
/*Fazendo UPDATE na tabela - Atualizando dados em uma tabela existente*/
update Professor
set nome = "Marcela dos Santos"
where id_professor = 3;

/*Exercicio 1*/
select * from Aluno
where matricula = 12345;

/*Exercicio 2*/
select * from Professor
where nome = "Leonardo Pereira";

/*Exercicio 3*/
select * from Telefone
where id_professor = 4;

/*Exercicio 4*/
select sala, curso from Turma
where capacidade > 22;

/*Exercicio 5*/
select id_Turma from Vinculo
where id_professor = 3;

/*Exercicio 6*/
select * from Vinculo
where id_professor <= 6;

/*Exercicio 7*/
select capacidade from turma
where curso = "Informatica";

/*Exercicio 8*/
select * from aluno 
where data_nasc > "1996-01-01";

select * from Vinculo 
where id_professor = 5 and id_turma = 4;

select * from telefone 
where telefone = 28469713 and id_professor = 4;

select * from professor
where id_professor = 5 or rg = 12345610;

select * from professor 
where id_professor = 5 or rg = 25649877;

select * from Professor 
where not id_professor = 5;

select * from Telefone 
where not telefone = 28469713 and not id_professor = 4;
