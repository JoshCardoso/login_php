<?php

try {
    $host='localhost';
    $username='root';
    $password='';
    $db_name='login_db';

    $conn = new mysqli($host, $username, $password, $db_name);

} catch (mysqli_sql_exception $e) {       
    
    echo "Erro: " . $e->getMessage();
}
