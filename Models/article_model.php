<?php
require_once "Models/connection_db.php";

function getArticleList(): array {
    global $pdo;
    return $pdo->query("SELECT * FROM article") ->fetchAll();
}

function getArticleById($id): array{
  global $pdo;
  $prepareStmt = $pdo->prepare("SELECT * FROM article WHERE id = :id");
  $prepareStmt->bindParam('id', $id);
  return $prepareStmt->fetch();
}