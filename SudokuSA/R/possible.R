#' Informe sur la validité du nombre dans la ligne/colonne/bloc
#'
#' @param X une matrice
#' @param row la ligne
#' @param col la colonne
#' @param number le nombre demandé
#' @return True pour valide ou False pour non valide
#'

possible <- function(X,row,col,number){
  if (isFALSE(existeSurLigne(X,number,row)) &&
      isFALSE(existeSurColonne(X,number,col)) &&
      isFALSE(existeSurBloc(X,number,row, col))){
    return(TRUE)
  }
  return(FALSE)
}

