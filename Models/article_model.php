<?php
require_once "Models/connection_db.php";

function getArticleList(): array {
    global $pdo;
    return $pdo->query("SELECT * FROM article") ->fetchAll();
}

function getArticleById($id){
  global $pdo;
  $prepareStmt = $pdo->prepare("SELECT * FROM article WHERE id = :id");
  $prepareStmt->bindParam('id', $id);
  $prepareStmt->execute();
  return $prepareStmt->fetch();
}

function insertArticle(array $data){
    global $pdo;
    $prepareStmt = $pdo->prepare("INSERT INTO article (title, content, date) VALUES (:title, :content, :date)");
    $prepareStmt->bindParam('title', $data['title']);
    $prepareStmt->bindParam('content', $data['content']);
    $prepareStmt->bindValue('date', date('Y-m-d H:i:s'));
    $prepareStmt->execute();

}

function deleteArticle($id){
    global $pdo;
    $prepareStmt = $pdo->prepare("DELETE FROM article WHERE id = :id");
    $prepareStmt->bindParam('id', $id);
    $prepareStmt->execute();
}