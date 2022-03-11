#' Détermine s'il existe déjà le numéro sur la colonne
#'
#' @param X la matrice
#' @param i le nombre
#' @param k la colonne
#' @return True ou false
#'



existeSurColonne <- function(X,i,k){
  if(any(X[,k] == i,na.rm = TRUE)){
    return(TRUE)
  }
  return(FALSE)
}
