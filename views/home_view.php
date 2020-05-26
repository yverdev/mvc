<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accueil</title>
</head>
<body>
    <h1>Bienvenue sur la page d'accueil</h1>
    <h2>Liste des articles</h2>
    <ul>
        <?php foreach ($articles as $article): ?>
            <li><?php echo htmlspecialchars($article['title']); ?></li>
        <?php endforeach; ?>
    </ul>

</body>
</html>