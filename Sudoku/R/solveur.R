#' Solveur du sudoku
#'
#' @param X la matrice incomplète
#' @return la matrice remplie et le nombre de retour

solveur <- function(X){
  v <- which(is.na(X), arr.ind = TRUE)
  NB <- matrix(0,nrow=nrow(v),ncol=3)
  for(i in 1:nrow(v)){
    NB[i,] <- c(v[i,1],v[i,2],length(EstValide(X,v[i,1],v[i,2])))
  }
  NB <- NB[order(NB[,3]),]
  back <- back + 1
  j <- 1
  X[is.na(X)] <- 0

  while(nrow(which(X==0,arr.ind=TRUE))!=0){
    val <- X[NB[j,1],NB[j,2]]
    X[NB[j,1],NB[j,2]] <- 0
    ind <- indice(val,EstValide(X,NB[j,1],NB[j,2]))
    if(length(EstValide(X,NB[j,1],NB[j,2]))==0 || ind == length(EstValide(X,NB[j,1],NB[j,2]))){
      j <- j-1
      back <- back+1
    }
    else{
      i <- ind+1
      X[NB[j,1],NB[j,2]] <- EstValide(X,NB[j,1],NB[j,2])[i]
      j <- j+1
    }
  }
  return(X)
}
