<?php
$servername = "localhost";
$database = "projetocora";
$username = "root";
$password = "";

// Criando a conexão com o banco de dados
$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $senha = $_POST["senha"];

    $sql = "SELECT * FROM paciente WHERE nome = '$nome' AND senha = '$senha'";

    $result = mysqli_query($conn, $sql);

    if ($result && mysqli_num_rows($result) == 1) {
        // Login bem-sucedido
        header("Location: index.html");

    } else {
        echo "Nome de usuário ou senha incorretos.";
    }
}

mysqli_close($conn);
?>
