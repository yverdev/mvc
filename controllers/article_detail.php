<?php
require_once 'Models/util.php';
require_once "Models/article_model.php";

$article = getArticleById($_GET['id']);
if(!$article){
    show404();
}

include 'Views/article_detail_view.php';