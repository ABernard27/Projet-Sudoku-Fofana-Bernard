library(shiny)
library(shinyWidgets)
library(shinythemes)
library(shinydashboard)

shinyUI(fluidPage(
    theme = shinytheme('darkly'),

    titlePanel(strong(HTML("Jeu de Sudoku"))),

    sidebarLayout(
        sidebarPanel(
            p(strong(HTML("Comment jouer? C'est super simple"))),
            p(HTML(text = "Il suffit de remplir les cases de sorte à avoir tous les chiffres de 1
                   à 9 sur une même ligne, une même colonne et un même bloc 3x3. Fais bien
                   attention ! Good Luck !")),
            br(),
            fixedRow(
                column(4,
                       p(HTML("   "))
                ),
                column(8,
                       actionButton(
                           inputId = "jouer",
                           label = "Jouer !"
                           )
                )
            ),
            radioButtons(
                inputId = "text",
                label = "", choices = c('Facile','Moyen','Difficile','Expert'),
                selected = 'Moyen'
            )),
        mainPanel(
            tabsetPanel(
                tabPanel("Sudoku", plotOutput("plotsudoku")),
                tabPanel("Solution")
            )
    ))
))


