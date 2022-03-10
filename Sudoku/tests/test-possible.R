test_that("Tester la fonction possible", {
  X <- matrix(c(9,NA,7,NA,4,6,5,1,NA,
                6,4,NA,8,NA,NA,9,NA,NA,
                5,NA,8,7,3,NA,6,NA,NA,
                NA,8,5,NA,NA,3,NA,2,NA,
                NA,NA,NA,6,NA,NA,NA,8,NA,
                NA,NA,6,5,NA,NA,3,7,NA,
                NA,NA,1,3,NA,7,NA,6,NA,
                NA,6,NA,NA,NA,NA,NA,9,NA,
                NA,9,NA,NA,6,2,NA,NA,NA),nrow=9,ncol=9,byrow=T)
  Bool <- possible(X,4,4,1)
  expect_true(Bool)
})
