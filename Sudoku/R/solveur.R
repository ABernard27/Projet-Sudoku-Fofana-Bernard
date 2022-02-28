#' Solveur du sudoku
#'
#' @param X la matrice incomplète
#' @return la matrice remplie
#'




solveur<- function(X){

  if(all(!is.na(X))){

    return(X)
  }

  df<- which(is.na(X), arr.ind = TRUE) # identification des valeurs manquantes

  row<- df[1,1]
  col<- df[1,2]

  p<- EstValide(X, row, col)

  for(i in p){

    X[row,col]<- i
    solve<- solveur(X) # Fonction recursive

    if(!is.null(solve)){ # si le nombre placé dans la mauvaise cellule, ça essaye un autre.

      return(solve)
    }
  }
  return(NULL)

}
