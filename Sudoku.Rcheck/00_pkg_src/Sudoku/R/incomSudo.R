#' Affiche la grille de sudoku
#'
#' @param X
#' @return la grille
#'

incomSudo <- function(X){
  for (i in 1:75){
    X[floor(runif(1,1,10)),floor(runif(1,1,10))] <- NA
  }
  sudoplot(X)
}


