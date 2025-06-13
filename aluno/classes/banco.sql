Create DATABASE aluno;
use aluno;
create table alunos (
    id int AUTO_INCREMENT primary key,
    ra int,
    nome varchar(100),
    periodo varchar(50),
    curso varchar(50)
);