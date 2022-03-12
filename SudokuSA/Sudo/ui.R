library(shiny)
library(shinyWidgets)
library(shinythemes)
library(shinydashboard)
library(gtable)
library(grid)
library(gridExtra)

shinyUI(fluidPage(
    theme = shinytheme('darkly'),

    titlePanel(h1(strong(HTML("Jeu de Sudoku")))),

    sidebarLayout(
        sidebarPanel(
            tags$head(tags$style(HTML("h1{color: #13CA87;
                                 font-size: 20px;
                                 }"))
            ),
            p(strong(HTML("Comment jouer? C'est super simple"))),
            p(HTML(text = "Il suffit de remplir les cases de sorte à avoir tous les chiffres de 1
                   à 9 sur une même ligne, une même colonne et un même bloc 3x3. Fais bien
                   attention ! Good Luck !")),
            br(),
            fixedRow(
                column(4,
                       p(HTML("   "))
                ),
                column(2,
                       actionButton(inputId='jouer',label='',icon=icon('play'))
                )
            ),
            radioButtons(
                inputId = "text",
                label = "Choisissez un niveau de difficulté!", choices = list('Facile'=1,'Moyen'=2,'Difficile'=3),
                selected=1

            )),
        mainPanel(
            tabsetPanel(
                tabPanel("Sudoku", plotOutput("plotsudoku")),
                tabPanel("Solution", plotOutput("resolve"))
            )
    ))
))


