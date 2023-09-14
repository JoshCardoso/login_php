<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require_once($_SERVER['DOCUMENT_ROOT'] . '/src/handle_db/connection.php');
    extract($_POST);

    $hash = password_hash($password, PASSWORD_DEFAULT);
    
    $stmnt = $conn->prepare("INSERT INTO usuarios (email, psswrd) VALUES (?, ?)");
    $stmnt->bind_param("ss", $email, $hash);
    $stmnt->execute();

    $select_stmnt = $conn->prepare("SELECT * FROM usuarios WHERE email= ?");
    $select_stmnt->bind_param("s",$email);
    $select_stmnt->execute(); 

    $result = $select_stmnt->get_result();
    if($result->num_rows == 1){
        $user = $result->fetch_assoc();
        session_start();
        $_SESSION['user'] = $user;
        header('location: /src/views/user.php');
    }else{
        echo 'nao achou';
    }
} else {
    header("location: /src/index.php");
}
