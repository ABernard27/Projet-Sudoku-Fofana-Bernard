#' Détermine si le chiffre est déjà présent dans le bloc
#'
#' @param X,i,(l,c)
#' @return True ou False
#'

source('WhichBloc.R')

existeSurBloc <- function(X,i,l,c){
  bloc <- WhichBloc(X,l,c)
  if (length(unique(bloc==i))==2){
    print('TRUE')
  }
  else{
    print('FALSE')
  }
}

