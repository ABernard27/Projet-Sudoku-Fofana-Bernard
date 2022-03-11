testthat("Tester la fonction indice",{
  vect <- c(5,4,27,42,29)
  ind <- indice(42,vect)
  expect_true(ind==4)
})
