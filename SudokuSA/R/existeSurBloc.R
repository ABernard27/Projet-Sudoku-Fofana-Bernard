#' Détermine si le chiffre est déjà présent dans le bloc
#'
#' @param X la matrice
#' @param i le nombre
#' @param l,c ligne et colonne
#' @return True ou False
#'

# source('WhichBloc.R')

existeSurBloc <- function(X,i,l,c){
  if (i %in% WhichBloc(X,l,c)){
    return(TRUE)
  }

  return(FALSE)
}

