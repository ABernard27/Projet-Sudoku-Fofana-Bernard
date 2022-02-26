#' Affiche la grille de sudoku
#'
#' @param None
#' @return la grille
#'

incomSudo <- function(){
  X <- sudo()
  Y <- X
  for (i in 1:75){
    X[floor(runif(1,1,10)),floor(runif(1,1,10))] <- 0
  }
  for (i in 1:9){
    for (j in 1:9){
      if (X[i,j]=='0'){
        Y[i,j]<- " "
      }
    }
  }
  print(X)
  sudoplot(Y)
}



