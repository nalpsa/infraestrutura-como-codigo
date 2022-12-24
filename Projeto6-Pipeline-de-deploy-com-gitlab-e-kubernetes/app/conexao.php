<?php 

$servername = "mysql-connection";
$username = "root";
$$password = "Senha123";
$database = "dio";

$link = new mysqli($servername, $username, $password, $database);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_errno());
    exit();
}

?>