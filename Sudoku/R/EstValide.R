
# fonction  EstValide

EstValide<- function(X,i,l,c){
  
  if(isFALSE(existeSurLigne(X,i,k)) && 
     isFALSE(existeSurColonne(X,i,k)) &&
     isFALSE(existeSurBloc(X,i,l,c))){
    
    return(TRUE)
  }
  
  return(FALSE)
  
}