#' Affiche la grille de sudoku
#'
#' @param None
#' @return la grille
#'

incomSudo <- function(){
  X <- sudo()
  for (i in 1:75){
    X[floor(runif(1,1,10)),floor(runif(1,1,10))] <- " "
  }
  sudoplot(X)
}


