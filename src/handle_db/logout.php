<?php
session_start();
session_destroy();
header('location: /src/views/login.php');