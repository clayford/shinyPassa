
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$powerPlot <- renderPlot({

    library(pwr)
      p.out <- pwr.p.test(h = ES.h(p1 = input$p1, p2 = input$p2), 
                          sig.level = input$sig.level, 
                          power = input$power, 
                          alternative = input$alternative)
      plot(p.out)  

  })

})
