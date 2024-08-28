mkdir exo4
cd exo4
GIT init
mkdir -p app/{controller,entity,repository} app/public/{css,js,media}
cd app
touch index.html package.json 
cd ..
GIT add .
GIT commit -m "numero uno"
touch app/controller/HomeController.php, app/entity/User.php, app/repository/UserRepository.php
GIT add .
GIT commit -m "numero dos"
cd app
touch public/css/main.css, public/js/app.js, public/media/profil.png
cd ..
GIT add .
GIT commit -m "numero tres"
rm -r app/public
GIT add .
GIT commit -m "numero quatro"
tree C:/Users/moham/OneDrive/Desktop/Cours_TP/bash-GIT/exo4 > C:/Users/moham/OneDrive/Desktop/Cours_TP/bash-GIT/exo4/structure.txt
GIT add .
GIT commit -m "numero cinqo"