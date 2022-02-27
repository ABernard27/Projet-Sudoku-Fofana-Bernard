#' Informe sur la validité du nombre dans les lignes/colonnes/blocs
#'
#' @param X
#' @param row
#' @param col
#' @param number
#' @return True pour valide ou False pour non valide
#'



Possible_cases<- function(X,row,col,num){
  n<-1:9
  p<-NA
  for(num in n){
    
    if(isFALSE(possible(X,row,col,num)))
      p<- append(p, num)
  }
  
  p<-p[complete.cases(p)]
  return(p)
  
}

# test 

A=sudo()
A
B=incomSudo(A)
B
possible(B,1,3,3)
Possible_cases(B,1,3,1)


