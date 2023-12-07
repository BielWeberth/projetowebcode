<?php
$servername = "localhost";//cll ip no pc localhost
$database = "projetocora";//nome do banco de dados 
$username = "root";//(root) no cll e no pc root
$password = "";//(root) no cll e no pc deixa vazio
//ciando a conexão com o bd 
$conn = mysqli_connect($servername,$username,$password,$database);
//verificando a conexão
if(!$conn){//se ela não existir 
    die("Falha na conexão: " . mysqli_connect_errno());//falha
}

if(strlen($_POST['email']) ==0){
    echo "Preencha seu e-mail";
}   else if(strlen($_POST['senha'])==0){
    echo "Preencha sua senha";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $cpf = $_POST["cpf"];
    $senha = $_POST["senha"];
    $nasc = $_POST["data_nascimento"];
    $genero = $_POST["genero"];
    $ocupacao = $_POST["ocupacao"];
    $sql = "INSERT INTO paciente(nome, email,cpf, senha, nasc, genero, ocupacao) VALUES ('$nome','$email','$cpf','$senha','$nasc','$genero', '$ocupacao')";
}
if ($conn->query($sql) === TRUE) {
    echo "Dados inseridos com sucesso!";
    header("Location: index.html");
} else {
    echo "Erro ao inserir dados: " . $conn->error;
}

mysqli_close($conn);
?>