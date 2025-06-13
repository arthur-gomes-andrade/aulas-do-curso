<?php

class Aluno{
    private $id;
    private $ra;
    private $nome;
    private $curso;
    private $periodo;
    private $pdo;

    public function conectar(){
        //o que fazer ao instanciar a classe
        //tentar conectar ao banco

        $dns    = "mysql:host=localhost;dbname=alunos";
        $dbUser = "root";
        $dbPass = ""; // senha do banco de dados

        try{
            $this->pdo = new PDO($dns, $dbUser, $dbPass);
            return true;
        }catch(exception $e){
           return false;
        }

    }

    //getters and setters - modificadores de acesso

    // o metodo get retorna o valor que estiver dentro do atributo
    public function getRa(){
        return $this->ra;
    }
    public function getNome(){
        return $this->nome;
    }
    public function geluptCurso(){
        return $this->curso;
    }
    public function getPeriodo(){
        return $this->periodo;
    }

    /* O metodo set vai gravar um valor no atributo, entao eu tenho que passar 
    esse parametro dentro dos parenteses
    */
    public function setRa($ra){
        $this->ra = $ra;
    }
    public function setNome($nome){
        $this->nome = $nome;
    }
    public function setcurso($curso){
        $this->curso = $curso;
    }
    public function setPeriodo($periodo){
        $this->periodo = $periodo;
    }
public function cadastrarAluno($nome, $ra, $periodo, $curso){
    //passo 1 criar uma variavel com a consulta SQL            
    $sql = "INSERT INTO alunos set nome = 'maria', ra = '123', periodo = '1', curso = 'engenharia'";
    echo $sql;
}

   
}