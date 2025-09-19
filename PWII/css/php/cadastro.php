<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../cadastro.css">
</head>
<body>
    <form action="../php/aluno.php" method="post">
        <p class="title">cadastra-se</p>

        <input type="text" placeholder="Nome: " required name="nomeAluno">
        <input type="email" placeholder="Email: " required name="emailAluno">

        <input type="number" placeholder="RM: " require name="rmAluno">
        <input type="number" placeholder="CPF" require name="cpfAluno">

    
        <button class="Cadastrar" type="submit">Cadastrar</button>
    </form>
    
</body>
</html>