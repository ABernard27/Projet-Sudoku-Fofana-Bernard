library(shiny)
library(shinyWidgets)
library(shinythemes)

shinyUI(fluidPage(

    titlePanel("Sudoku"),

    theme = shinytheme('flatly'),

    sidebarLayout(
        sidebarPanel(
        radioButtons(
            inputId = "text",
            label = "Choisis une difficulté", choices = c('Facile','Moyen','Difficile','Expert')
        )),
        mainPanel(plotOutput(outputId = 'plotsudoku'))
    )
))
