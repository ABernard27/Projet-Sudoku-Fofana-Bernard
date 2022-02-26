library(shiny)


shinyServer(function(input, output) {
    observe({ print(input$text)
    })
    output$plotsudoku <- renderPlot({input$jouer
      incomPlot()
    })
})
