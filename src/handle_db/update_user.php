<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require_once($_SERVER['DOCUMENT_ROOT'] . '/src/handle_db/connection.php');
    extract($_POST);
    
    if($_FILES['img']['tmp_name']){
        $photo = addslashes(file_get_contents($_FILES['img']['tmp_name']));
        $hash = password_hash($password, PASSWORD_DEFAULT);
    }

    $name !== "" && $conn->query("UPDATE usuarios SET name = '$name' WHERE id_usuario = $id");
    $bio !== "" && $conn->query("UPDATE usuarios SET bio = '$bio' WHERE id_usuario = $id");
    $phone !== "" && $conn->query("UPDATE usuarios SET phone = '$phone' WHERE id_usuario = $id");
    $photo !== "" && $conn->query("UPDATE usuarios SET photo = '$photo' WHERE id_usuario = $id");
    $email !== "" && $conn->query("UPDATE usuarios SET email = '$email' WHERE id_usuario = $id");
    $password !== "" && $conn->query("UPDATE usuarios SET psswrd = '$hash' WHERE id_usuario = $id");


    $stmnt = $conn->prepare("SELECT * FROM usuarios WHERE id_usuario= ?");
    $stmnt->bind_param("s", $id);
    $stmnt->execute();
    $result = $stmnt->get_result();
    $user = $result->fetch_assoc();
    $_SESSION['user'] = $user;
    header("location: /src/views/user.php");
} else {
    header("location: /src/index.php");
}
