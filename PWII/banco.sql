CREATE DATABASE etimpwiicontato;
USE etimpwiicontato;
CREATE TABLE contato(
    rm int,
    id int primary key auto_increment;
    nome varchar(100),
    email varchar(150),
    senha varchar(32)
);

INSERT INTO contato SET nome = "Admin", email = "admin@gmail.com", senha = "123"