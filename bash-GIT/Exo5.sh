mkdir exo5
cd exo5
git init
echo #!/bin/bash > script.sh
git add .
git commit -m "un"
echo 'echo Ou stocker le contenue ? ' >> script.sh
echo read emplacement >> script.sh
echo 'mkdir $emplacement' >> script.sh
echo 'cd C:Users/moham/OneDrive/Desktop/Cours_TP/bash-GIT/exo5/$emplacement' >> script.sh
echo mkdir media >> script.sh
echo cd media >> script.sh
echo touch collection.txt >> script.sh
echo 'echo Nom du film a ajouter ? ' >> script.sh
echo read film >> script.sh
echo 'echo $film >> collection.txt' >> script.sh
git add .
git commit -m sauvegarde
source script.sh
















