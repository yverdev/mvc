<?php

$pdo = new PDO('mysql:host=localhost;dbname=mvc', 'mvc', 'mvc', [
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);