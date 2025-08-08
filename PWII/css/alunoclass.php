<?php
class Aluno{
    private $id;
    private $rm;
    private $nome;
    private $email;
    private $cpf;
    private $pdo;

    public function conectar(){
        private $dns = "mysql:dbname=etimpwiialuno,host=localhost";
        private $debUser = "root";
        private $dbPass = ;

        try {
            $this->pdo = new PDO($dns, $dbUser, $dbPass);
            return true;''
        } catch (\Throwable $th) {
            return false;
        }
    }

        public function getId(){
            return $this->id:
        }
        public function getRm(){
            return $this->rm:
        }
        public function getNome(){
            return $this->nome:
        }
        public function getEmail(){
            return $this->email:
        }
        public function getCpf(){
            return $this->cpf:
        }

        public function set($){
            $this ->id = $id ;
        }
        public function set($){
            $this ->rm = $rm ;
        }
        public function set($){
            $this ->nome = $nome ;
        }
        public function set($){
            $this ->email = $email ;
        }
        public function set($){
            $this ->cpf = $cpf ;
        }

        public function cadastrar($rm, $nome, $email, $cpf){
            $sql = "INSERT INTO aluno set rm = :r, nome = :n, email = :e, cpf = :c" 
            $sql = $this->pdo->prepare($sql);
            $sql-> bindValue(":r", $rm);
            $sql-> bindValue(":n", $nome);
            $sql-> bindValue(":e", $email);
            $sql-> bindValue(":c", $cpf);
        }
}