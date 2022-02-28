#' Affiche la grille de sudoku
#'
#' @param X
#' @return Une grille incomplète
#'

incomPlot <- function(X){
  for (i in 1:9){
    for (j in 1:9){
      if (is.na(X[i,j])){
        X[i,j]<- " "
      }
    }
  }
  sudoplot(X)
}


