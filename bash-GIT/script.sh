#/bin/bash
echo "Donnez un nom a votre projet: "
read nom 
echo "Entrez l'emplacement ou stocker le projet: "
read emplacement
cd $emplacement
mkdir $nom "$nom/site"
cd $nom
touch site/index.html site/script.js site/main.css site/img.png
ls 
echo "Tout c'est bien passe! GG