#' Détermine s'il existe déjà le numéro sur la ligne
#'
#' @param X la matrice
#' @param i le nombre
#' @param k la ligne
#' @return TRUE ou FALSE
#'


existeSurLigne <- function(X,i,k){
  if(any(X[k,] == i,na.rm = TRUE)){
    return(TRUE)
  }
  return(FALSE)
}


