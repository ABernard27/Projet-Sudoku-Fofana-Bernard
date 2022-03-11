devtools::load_all()
library(shiny)


shinyServer(function(input, output) {
    observe({ print(input$text)
    })
    output$plotsudoku <- renderPlot({input$jouer
     diff <- difficulte(as.numeric(input$text))
     Plot(diff)
    output$resolve <- renderPlot({input$jouer
     Y <- solveur(diff)$matrice
     sudoplot(Y)
    })
    })
})
