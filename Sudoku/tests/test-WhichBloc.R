test_that("Tester la fonction WhichBloc", {
  X <- matrix(c(9,0,7,0,4,6,5,1,0, # la matrice ne peut pas avoir de NA car NA==NA ça renvoie NA
                6,4,0,8,0,0,9,0,0,
                5,0,8,7,3,0,6,0,0,
                0,8,5,0,0,3,0,2,0,
                0,0,0,6,0,0,0,8,0,
                0,0,6,5,0,0,3,7,0,
                0,0,1,3,0,7,0,6,0,
                0,6,0,0,0,0,0,9,0,
                0,9,0,0,6,2,0,0,0),nrow=9,ncol=9,byrow=T)
  Bloc <- WhichBloc(X,2,3) # bloc donné par la fonction
  BlocV <- matrix(c(9,0,7,6,4,0,5,0,8),nrow=3,ncol=3,byrow=T)# vrai bloc
  M <- BlocV!=Bloc
  if(sum(M)==0){
     expect_true(TRUE)
  }
  else{expect_true(FALSE)}
})
