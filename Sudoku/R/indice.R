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
