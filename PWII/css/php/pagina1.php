<?php
session_start();
$_SESSION['nome'] = "Arthur";

header(location:pagina2.php);
