<?php 
require 'Aluno.class.php';
$aluno = new Aluno();

$con = $aluno->conectar();
$nomeAluno  = $_POST['nomeAluno'];
$emailAluno = $_POST['emailAluno'];
$rmAluno    = $_POST['rmAluno'];
$cpfAluno   = $_POST['cpfAluno'];


if($con) {
    $al = $aluno->consulta($emailAluno);
    if(!$al) {
        $aluno->cadastrar($rmAluno, $nomeAluno, $emailAluno, $cpfAluno);
    } else {
        echo "Aluno ja cadastrado";
    }
} else {
    echo "Sem conexao com o BD";
}
?>