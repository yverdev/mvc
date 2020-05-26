<?php include 'Views/incs/header.php' ?>
    <h1>Bienvenue sur la page d'accueil</h1>
    <h2>Liste des articles</h2>
    <ul>
        <?php foreach ($articles as $article): ?>
            <li><a href="?controller=article_detail&id=<?php echo $article['id'] ?>">
                    <?php echo htmlspecialchars($article['title']); ?>
                </a>
                <a href="?controller=article_delete&id=<?php echo $article['id'] ?>">
                    Supprimer
                </a>
            </li>
        <?php endforeach; ?>
    </ul>

    <form method="post">
        <?php if(isset($errors)) :?>
        <p><?php echo $errors; ?></p>
        <?php endif;?>
        <label for="InputTitle">Titre : </label>
        <input type="text" name="title">
        <label for="InputContent">Contenu : </label>
        <input type="text" name="content">
        <button type="submit">Ajouter</button>
    </form>
<?php include 'Views/incs/footer.php' ?>
