# Projet-Sudoku-Fofana-Bernard
Anne Bernard (anne.bernard@etu.umontpellier.fr)  & Fofana Sikou (sikou.fofana01@etu.umontpellier.fr)
# Introduction :
L’objectif du projet est de créer une bibliothèque R, incluant une application Shiny, contenant
des fonctions permettant de :
- générer aléatoirement des grilles de Sudoku complètes,
- résoudre des grilles de Sudoku incomplètes,
- générer des grilles de Sudoku incomplètes associées à un niveau de difficulté.
# Qu'est ce qu'une grille de Sudoku ?
Une grille de Sudoku est composée de 9 colonnes et 9 lignes, soit 81 cellules au total. Vous verrez parfois le mot « bloc » quand on parle de Sudoku, terme qui représente un groupement de cellules composé de 3 colonnes et 3 lignes.
# Démarche :
- La grille complète a été générée avec le package "sample" du logiciel R qui génère des nombres aléatoires ; 
- Pour générer la grille incomplète, nous nous sommes servi de la grille complète.
- Pour le solveur, nous avons conçu quatre fonctions à savoir ExisteSurLigne qui vérifie si un un nombre se trouve sur une ligne, ExisteSurcolonne pour la colonne, ExisteBloc pour le bloc, EstValide qui vérifie les trois précedentes en même temps et enfin la fonction proprement dite qui résout le sudoku;
- Le niveau de difficulté est focntion du nombre de retour du backtraking par exepmle pour le niveau facile le nombre de retour est comprise entre 0 et 700, pour le niveau moyen   entre 700 et 2000 etc....
# Les règles du jeu de Sudoku :
Elles sont assez simple à apprendre et à comprendre. Le but est de remplir à l'aide de chiffres de 1 à 9 les cellules vides d'une grille.
Quelles règles dois-je respecter pour résoudre une grille de Sudoku ?
1. Chaque colonne doit contenir les chiffres de 1 à 9
2. Chaque ligne doit contenir les chiffres de 1 à 9
3. Chaque bloc doit contenir les chiffres de 1 à 9
Le Sudoku est résolue quand toutes les cellules de la grille sont remplies en respectant les 3 règles énnoncées précédemment.
La résolution d'une grille de Sudoku demande patience et logique qui se développeront au fur et à mesure des grilles jouées.

-<p align="center"> <img src="C:\Users\SCD UM\Pictures\Sudoku_complete.png" width=200 title="Exemple de Grille Complète"> </p>

