<?php include 'Views/incs/header.php' ?>

<h1><?php echo htmlspecialchars($article['title']); ?></h1>

<article>

    <?php echo htmlspecialchars($article['content']); ?>
</article>

    <a href="?controller=home">Revenir à la page d'accueil</a>
<?php include 'Views/incs/footer.php' ?>
