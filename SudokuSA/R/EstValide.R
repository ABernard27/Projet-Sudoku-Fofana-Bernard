#' Détermine les numéros possibles à un emplacement
#'
#' @param X la matrice
#' @param row la ligne
#' @param col la colonne
#' @return la liste des nombres possibles
#'


EstValide<- function(X,row,col){
  n<-1:9
  p<-NA
  for(number in n){

    if(isTRUE(possible(X,row,col,number)))
      p<- append(p, number)
  }

  p<-p[complete.cases(p)]
  return(p)

}
