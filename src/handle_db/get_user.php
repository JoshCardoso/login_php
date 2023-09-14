<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require_once($_SERVER['DOCUMENT_ROOT'] . '/src/handle_db/connection.php');
    extract($_POST);

    
    $stmnt = $conn->prepare("SELECT * FROM usuarios WHERE email= ?");
    $stmnt->bind_param("s", $email);
    $stmnt->execute();
    
    $result = $stmnt->get_result();
    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();
        $hash = $user['psswrd'];
        $verify = password_verify($password, $hash);
        if ($verify) {
            session_start();
            $_SESSION['user'] = $user;
            header('location: /src/views/user.php');
        } else {
            header("location: /src/index.php");
        }
    } else {
        header("location: /src/index.php");
    }
} else {
    header("location: /src/index.php");
}
