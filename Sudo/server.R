library(shiny)


shinyServer(function(input, output) {
    observe({ print(input$text)
    })
    output$plotsudoku <- renderPlot({input$jouer
     X <- incomSudo()
     incomPlot(X)
    output$resolve <- renderPlot({input$jouer
     Y <- solveur(X)
     sudoplot(Y)
    })
    })
})
