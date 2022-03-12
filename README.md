# Projet-Sudoku-Fofana-Bernard
Anne Bernard (anne.bernard@etu.umontpellier.fr)  & Fofana Sikou (sikou.fofana01@etu.umontpellier.fr)
# Introduction
L’objectif du projet est de créer une bibliothèque R, incluant une application Shiny, contenant
des fonctions permettant de :
- Générer aléatoirement des grilles de Sudoku complètes
- Résoudre des grilles de Sudoku incomplètes
- Générer des grilles de Sudoku incomplètes associées à un niveau de difficulté.

# Démarche
- La grille complète a été générée avec le package ``sample`` du logiciel R qui génère des nombres aléatoires.
- Pour générer la grille incomplète, nous nous sommes servi de la grille complète. Nous avons vidé des cases aléatoirement. Plus précisément, certaines valeurs sont devenues des ```NA```.
- Pour le solveur, nous avons conçu cinq fonctions intermédiaires : ``ExisteSurLigne`` qui vérifie si un nombre se trouve sur une ligne, ``ExisteSurcolonne`` pour la colonne, ``ExisteBloc`` pour le bloc, ``EstValide`` qui vérifie les trois précedentes en même temps et enfin la fonction ``indice`` qui récupère l'indice d'un nombre donné dans un vecteur. Toutes ces fonctions nous ont permis de créer l'algorithme de backtracking. 
- Pour déterminer le niveau de difficulté du Sudoku nous avons utilisé le nombre de retour de l'algorithme de backtracking, plus il y a de retour plus la solution a demandé du temps à R pour être calculée.

# Les règles du jeu de Sudoku 
Elles sont assez simple à apprendre et à comprendre. Le but est de remplir à l'aide de chiffres de 1 à 9 les cellules vides d'une grille.
Quelles règles dois-je respecter pour résoudre une grille de Sudoku ?
1. Chaque colonne doit contenir les chiffres de 1 à 9 ;
2. Chaque ligne doit contenir les chiffres de 1 à 9 ;
3. Chaque bloc doit contenir les chiffres de 1 à 9.
Le Sudoku est résolue quand toutes les cellules de la grille sont remplies en respectant les 3 règles énnoncées précédemment.
La résolution d'une grille de Sudoku demande patience et logique qui se développeront au fur et à mesure des grilles jouées.

# Application Shiny et niveau de difficulté

Pour l'application shiny c'est très simple : lorsque celle-ci est en marche elle génère obligatoirement un sudoku de niveau facile ainsi que sa solution (présente dans un autre onglet). Pour changer le niveau de difficulté il suffit de cliquer sur un autre niveau : moyen ou difficile. 


<p align="center">
  <img src="https://github.com/ABernard27/Projet-Sudoku-Fofana-Bernard/blob/main/Images/shiny.png" width=600 title="Application Shiny">
</p>
