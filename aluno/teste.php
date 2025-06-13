<?php
require 'classes/Aluno.class.php';

$conn = $aluno = new Aluno();

$conn = $aluno->conectar();

if($conn) {
    $aluno->cadastrarAluno("maria", "123", "1", "engenharia")
} else{
    echo "<h1>conexão falhou";
}
