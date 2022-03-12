#' Donne l'indice d'un nombre dans un vecteur
#'
#' @param v un nombre
#' @param vect un vecteur
#' @return 0 si le nombre n'est pas dans le vecteur, l'indice s'il y est


indice <- function(v,vect){
  p <- 0
  if(length(vect)==0){
    return(p)
  }
  else{
    for(i in 1:length(vect)){
      if(vect[i]==v){
        p <- i
      }
    }
  }
  return(p)
}
