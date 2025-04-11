<?php
if(isset($_POST["nomedousuario"]) && isset($_POST["senha"]))
{
    $usuario1 = new Usuario($_POST["nomedousuario"],$_POST["senha"]);
}