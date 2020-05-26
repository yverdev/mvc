<?php
require_once "Models/article_model.php";

$articles = getArticleList();


include 'Views/home_view.php';