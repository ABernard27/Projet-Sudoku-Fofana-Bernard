#' Renvoie une matrice du niveau de difficulté demandé
#'
#' @param niv niveau de difficulté : "Facile"=1, "Moyen"=2, "Difficile"=3, "Expert"=4
#' @return affichage du sudoku

difficulte <- function(niv){
  if(niv==1){
    int <- 0:700
  }
  if(niv==2){
    int <- 700:2000
  }
  if(niv==3){
    int <- 2000:8000
  }
  if(niv==4){
    int <- 8000:1000000000
  }

  X <- incomSudo()
  b <- solveur(X)$Back

  while(!(b %in% int)){
    X <- incomSudo()
    b <- solveur(X)$Back
  }

  return(X)
}
