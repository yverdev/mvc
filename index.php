<?php
require_once 'Models/util.php';

if(empty($_GET['controller'])){
    $controller = 'home';
} else {
    $controller = $_GET['controller'];
}

$controller = $_GET['controller'] ?? 'home';


if( ! file_exists('Controllers/'. $controller . '.php')){
    show404();
}

require 'Controllers/' . $controller . '.php';