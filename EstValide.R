#' Détermine si le numéro en question est valide 
#'
#' @param X, position
#' @return True ou False
#'


# source('EstValide.R')

EstValide = function(X,l){
  if (l == 9*9)
    
    print(TRUE)
  
     i = l%9, j = l%9
  
  if (X[i][j] != NA)
    
    print(EstValide(X, l+1))
  
  for (k in 1:9)
  {
    if (existeSurLigne(k,X,i) && existeSurColonne(k,X,j) && existeSurBloc(k,X,i,j))
    {
      X[i][j] = k
      
      if (EstValide (X, l+1))
        
        print(TRUE)
    }
  }
   X[i][j] = 0
  
  print(FALSE)
}

