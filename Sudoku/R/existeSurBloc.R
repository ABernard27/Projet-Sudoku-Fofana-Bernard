#' Détermine si le chiffre est déjà présent dans le bloc
#'
#' @param X,i,(l,c)
#' @return True ou False
#'

source('WhichBloc.R')

existeSurBloc <- function(X,i,l,c){
  bloc <- WhichBloc(X,l,c)
  if (length(unique(bloc[1,]==i))==2 | length(unique(bloc[2,]==i))==2 | length(unique(bloc[3,]==i))==2){
    print('TRUE')
  }
  else{
    print('FALSE')
  }
}

