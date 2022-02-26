#' Informe sur la validité du nombre dans la ligne/colonne/bloc
#'
#' @param X
#' @param row
#' @param col
#' @param number
#' @return True pour valide ou False pour non valide
#'

possible <- function(X,row,col,number){
  if (existeSurLigne(X,number,row)==FALSE){
    L <- 0
  }
  else{L <- 1}
  if (existeSurColonne(X,number,col)==FALSE){
    C <- 0
  }
  else{C <- 1}
  if (existeSurBloc(X,number,row, col)==FALSE){
    B <- 0
  }
  else{B <- 1}
  if (L == 0 && C == 0 && B == 0){
    return(TRUE)
  }
  else{return(FALSE)}
}
