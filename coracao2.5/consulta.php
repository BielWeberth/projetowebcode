<?php
$servername = "localhost";
$database = "projetocora";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $horario = $_POST["horario"];
    $data = $_POST["data"];
    $sintoma = $_POST["sintoma"];
    $sql = "INSERT INTO consultas (nome, hora, data, sintoma) VALUES ('$nome', '$horario', '$data', '$sintoma')";


    if (mysqli_query($conn, $sql)) {
        echo "Dados inseridos com sucesso!";
        header("Location: index.html");
    } else {
        echo "Erro ao inserir dados: " . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>
