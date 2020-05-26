<?php
require_once "Models/article_model.php";
if(empty($_GET['id'])){

    show404();
}

$article = getArticleById($_GET['id']);

if(!$article){
show404();
}

deleteArticle($_GET['id']);

header('location: ?controller=home');