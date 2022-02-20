#' Affiche la grille de sudoku
#'
#' @param X
#' @return la grille
#'

sudoplot <- function(X){
  A <- grid.table(X)
  add.grid.table(vp=A,cell.padding=0.5)
}



library(gtable)
library(grid)
g <- tableGrob(X, rows = NULL)
g <- gtable_add_grob(g,
                     grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                     t = 2, b = nrow(g), l = 1, r = ncol(g))
g <- gtable_add_grob(g,
                     grobs = rectGrob(gp = gpar(fill = NA, lwd = 2)),
                     t = 1, l = 1, r = ncol(g))
grid.draw(g)




grid.ftable <- function(d, padding = unit(4, "mm"), ...) {

  nc <- ncol(d)
  nr <- nrow(d)

  ## character table with added row and column names
  extended_matrix <- cbind(c(rownames(d)),colnames(d),
                                 as.matrix(d))

  ## string width and height
  w <- apply(extended_matrix, 2, strwidth, "inch")
  h <- apply(extended_matrix, 2, strheight, "inch")

  widths <- apply(w, 2, max)
  heights <- apply(h, 1, max)

  padding <- convertUnit(padding, unitTo = "in", valueOnly = TRUE)

  x <- cumsum(widths + padding) - 0.5 * padding
  y <- cumsum(heights + padding) - padding

  rg <- rectGrob(x = unit(x - widths/2, "in"),
                 y = unit(1, "npc") - unit(rep(y, each = nc + 1), "in"),
                 width = unit(widths + padding, "in"),
                 height = unit(heights + padding, "in"))

  tg <- textGrob(c(t(extended_matrix)), x = unit(x - widths/2, "in"),
                 y = unit(1, "npc") - unit(rep(y, each = nc + 1), "in"),
                 just = "center")

  g <- gTree(children = gList(rg,tg), ...,
             x = x, y = y, widths = widths, heights = heights)

  grid.draw(g)
  # invisible(g)
}

grid.newpage()
grid.ftable(X, gp = gpar(fill = rep(c("grey90", "grey95"))))
