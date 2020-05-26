<?php
require_once "Models/article_model.php";
// $_POST content [`title` => `Mon titre`, `content` => `Mon contenu`]
if(!empty($_POST)){
    if(empty($_POST['title']) || empty($_POST['content'])){
        $errors = "Tous les champs sont obligatoires";
    } else{
        insertArticle($_POST);
    }

}

$articles = getArticleList();

include 'Views/home_view.php';