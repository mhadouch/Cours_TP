#Se deplacer dans un dossier
cd c:Users/moham/OneDrive/desktop/Cours_TP/bash-GIT

#Creer un dossier
mkdir exo3 

#Se deplacer dans un dossier
cd c:Users/moham/OneDrive/desktop/Cours_TP/bash-GIT/exo3

#Initialiser le repository
GIT init

#Creer des dossiers
mkdir js css

#creer un fichier
touch index.html

#Ajouter le fichier a la liste d'attente 
GIT add index.html

#Sauvegarder (Commit)
GIT commit -m "28/08/24 1"

#Ajouter un fichier 
cd js
touch script.js
cd ..
cd css
touch main.css

#Ajouter a la liste d'attente
cd c:Users/moham/OneDrive/desktop/Cours_TP/bash-GIT/exo3
GIT add .

#Sauvegarder (Commit)
GIT commit -m "28/08/24 2"

#Modifier index.html
ECHO '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/script.js" defer></script>
    <link rel="stylesheet" href="./css/main.css">
    <title>Mon profil</title>
</head>
<body>
    <h1>Bienvenue sur mon super site</h1>
</body>
</html>' > index.html

#Ajouter a la liste d'attente
GIT add index.html

#Sauvegarder (Commit)
GIT commit -m "28/08/24 3"

#Creer un fichier
touch page.html

#Ajouter a la liste d'attente
GIT add page.html

#Sauvegarder (Commit)
GIT commit -m "28/08/24 4"



