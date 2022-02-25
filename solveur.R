

# Fonction de résolution d'un sudoku

# Ecrivons une fonction une qui vérifie si un chiffre appartient à une ligne ou pas

# sudoko pour la vérification des des différentes fonctions

sudoku<- matrix(c(NA,NA,NA,NA,NA,3,4,NA,NA,
                  NA,NA,2,NA,NA,NA,NA,5,7,
                  NA,NA,NA,7,NA,6,NA,NA,NA,
                  NA,9,NA,NA,NA,7,NA,NA,9,
                  1,2,NA,NA,NA,NA,NA,8,NA,
                  NA,5,NA,5,NA,2,NA,NA,NA,
                  7,NA,3,NA,NA,NA,NA,NA,NA,
                  8,NA,NA,NA,NA,6,NA,NA,NA,
                  9,NA,NA,4,1,NA,NA,6,NA),
                nrow=9,ncol=9, byrow=TRUE)
sudoku

ExisteLigne <- function(X,row,num){
  if(any(X[row,] ==num,na.rm = TRUE)){
    return(TRUE)
  }
  return(FALSE)
}

# test
ExisteLigne (sudoku,2,7)

# Ecrivons une fonction une qui vérifie si un chiffre appartient à une colonne ou pas

ExisteColonne <- function(X,col,num){
  if(any(X[,col] ==num,na.rm = TRUE)){
    return(TRUE)
  }
  return(FALSE)
}

#test
 ExisteColonne(sudoku,3,5)

 # Ecrivons une fonction une qui vérifie si un chiffre appartient à une bloc ou pas
 
 
 
ExisteBloc<- function(X,row,col,num){
  LigneBloc<- ((row-1) %/% 3)*3
  ColonneBloc<-(((col-1) %/% 3)*3)+ 1:3
  if(any(X[(LigneBloc + 1), ColonneBloc] == num, na.rm = TRUE) ||
     any(X[(LigneBloc + 2), ColonneBloc] == num, na.rm = TRUE) ||
     any(X[(LigneBloc + 3), ColonneBloc] == num, na.rm = TRUE)) {
    return(TRUE)
  }
  return(FALSE)
}

#test

ExisteBloc(sudoku,1,2,5)

# Ecrivons une fonction que nous allons appeler "EstValide" qui exécute les trois précendentes fonctions

EstValide<- function(X,row,col,num){
  
  if(isFALSE(ExisteLigne(X,row,num)) && 
     isFALSE(ExisteColonne(X,col,num)) &&
     isFALSE(ExisteBloc(X,row,col,num))){
       
       return(TRUE)
     }
  
  return(FALSE)
  
}

# test

EstValide(sudoku,1,2,7)

# EstValideGénérale

EstValideG<- function(X,row,col,num){
  
  n<-1:9
  p<-NA
  for(num in n){
    
    if(isTRUE(EstValide(X,row,col,num)))
       p<- append(p, num)
  }
  
  p<-p[complete.cases(p)]
  return(p)
  
}

# test


EstValideG(sudoku,9,7,3)

# Solveur qui utilise à son tour la dernière fonction


Solveur_Sudoku<- function(X){
  
  if(all(!is.na(X))){
    
    return(X)
  }
  
  df<- which(is.na(X), arr.ind = TRUE) # identification des valeurs manquantes
  
  row<- df[1,1]
  col<- df[1,2]
  
  p<- EstValideG(X, row, col)
  
  for(i in p){
    
    X[row,col]<- i
    solve<- Solveur_Sudoku(X) # Fonction recursive 
    solve
    if(!is.null(solve)){ # si le nombre placé dans la mauvaise cellule, ça essaye un autre. 
      
   
    }
    return(solve)
  }
  return(NULL)
}


# test


sudoku<- matrix(c(NA,NA,NA,NA,NA,3,4,NA,NA,
                  NA,NA,2,NA,NA,NA,NA,5,7,
                  NA,NA,NA,7,NA,6,NA,NA,NA,
                  NA,9,NA,NA,NA,7,NA,NA,9,
                  1,2,NA,NA,NA,NA,NA,8,NA,
                  NA,5,NA,5,NA,2,NA,NA,NA,
                  7,NA,3,NA,NA,NA,NA,NA,NA,
                  8,NA,NA,NA,NA,6,NA,NA,NA,
                  9,NA,NA,4,1,NA,NA,6,NA),
                nrow=9,ncol=9, byrow=TRUE)
sudoku
res<- Solveur_Sudoku(sudoku)
res
system.time(res)  # donne le temps d'exécution            


# test2

sudoku2 = matrix(c(1, 9, NA, NA, 3, 2, NA, NA, NA,
                  5, NA, NA, 1, 9, 7, NA, NA, NA,  
                  NA, 3, 2, NA, NA, NA,NA, 9, NA, 
                  7, NA, NA, NA, 4, NA, NA, NA, 6, 
                  8, NA, NA, NA, NA, 9, NA, NA, 3, 
                  NA, 4, NA, NA, NA, NA, 7, 1, NA, 
                  NA, NA, NA, 9, 2, 4, NA,NA, 5,
                  NA, NA, NA, 6, 7, 1, NA, NA, 4, 
                  NA, NA, NA, NA, 8, NA, NA, NA, NA),
                       nrow=9,ncol=9, byrow=TRUE)

sudoku2
sudoku2<- Solveur_Sudoku(sudoku2)
sudoku2
system.time(sudoku2)  # donne le temps d'exécution   



