#' Affiche la grille de sudoku
#'
#' @param X une matrice de sudoku
#' @return l'affichage du sudoku
#'


sudoplot <- function(X){
  g <- tableGrob(X, rows = NULL, widths=unit(rep(40,9),"pt"),heights=unit(rep(40,9),"pt"),
                 theme = ttheme_default(base_size = 30 ,base_colour = 'black'))
  g <- gtable_add_grob(g,
                       grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                       t = 1, b=nrow(g), l = 1, r = ncol(g))
  g <- gtable_add_grob(g,
                       grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                       t = 9, b = 1, l = 3, r = 1)
  g <- gtable_add_grob(g,
                       grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                       t = 9, b = 1, l = 6, r = 1)
  g <- gtable_add_grob(g,
                       grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                       t = 1, b = 3, l = 1, r = 9)
  g <- gtable_add_grob(g,
                       grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                       t = 1, b = 6, l = 1, r = 9)
  grid.newpage()
  grid.draw(g)
}


