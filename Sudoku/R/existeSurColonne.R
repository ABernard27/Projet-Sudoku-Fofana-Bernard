#' Détermine s'il existe déjà le numéro sur la colonne
#'
#' @param X,i,k
#' @return True ou false
#'



existeSurColonne <- function(X,i,k){
  if (length(unique(X[,k]==i))==2){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}
