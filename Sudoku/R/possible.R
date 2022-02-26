#' Informe sur la validité du nombre dans la ligne/colonne/bloc
#'
#' @param X
#' @param row
#' @param col
#' @param number
#' @return True pour valide ou False pour non valide
#'

possible <- function(X,row,col,number){
  if (existeSurLigne(X,number,row)==FALSE && existeSurColonne(X,number,col)==FALSE
      && existeSurBloc(X,number,row, col)==FALSE){
    return(TRUE)
  }
  else{return(FALSE)}
}
