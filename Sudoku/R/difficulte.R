#' Niveau de difficulté
#'
#' @param niv niveau de difficulté : "Facile", "Moyen", "Difficile", "Expert"
#' @return un sudoku

difficulte <- function(niv){
  if(niv==1){
    int <- 0:700
  }
  if(niv==2){
    int <- 700:5000
  }
  if(niv==3){
    int <- 5000:15000
  }
  if(niv==4){
    int <- 15000:1000000000
  }

  X <- incomSudo()
  b <- solveur(X)$Back

  while(!(b %in% int)){
    X <- incomSudo()
    b <- solveur(X)$Back
  }

  return(X)
}
