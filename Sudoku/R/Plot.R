#' Affiche la grille de sudoku
#'
#' @param X matrice avec des NA
#' @return Une grille incomplète
#'

Plot <- function(X){
  for (i in 1:9){
    for (j in 1:9){
      if (is.na(X[i,j])){
        X[i,j]<- " "
      }
    }
  }
  sudoplot(X)
}


