#' Génère une grille de sudoku incomplète
#'
#' @param None
#' @return La matrice incomplète
#'

incomSudo <- function(){
  X <- sudo()
  for (i in 1:75){
    X[floor(runif(1,1,10)),floor(runif(1,1,10))] <- NA
  }
  return(X)
}

