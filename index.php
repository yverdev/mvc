<?php
if(empty($_GET['controller'])){
    $controller = 'home';
} else {
    $controller = $_GET['controller'];
}

$controller = $_GET['controller'] ?? 'home';


if( ! file_exists('Controllers/'. $controller . '.php')){
    http_response_code(404);
    echo "Page not found";
    return;
}

require 'Controllers/' . $controller . '.php';