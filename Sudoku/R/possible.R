#' Informe sur la validité du nombre dans la ligne/colonne/bloc
#'
#' @param X
#' @param row
#' @param col
#' @param number
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

