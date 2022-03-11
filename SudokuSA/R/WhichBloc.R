#' Détermine le bloc dans lequel se trouve le chiffre demandé
#'
#' @param X la matrice sudoku
#' @param l la ligne
#' @param c la colonne
#' @return le bloc en question
#'

WhichBloc <- function(X,l,c){
  v <- c((l-1)%/%3,(c-1)%/%3)
  return(X[v[1]*3+(1:3),v[2]*3+(1:3)])
}

