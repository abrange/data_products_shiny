library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$sourcetemp <- renderText({ 
        if (input$radio==1)
            paste(input$bins," F")
        else
            paste(input$bins," C")
    })
    
    output$convertedtemp <- renderText({ 
        if (input$radio==1)
            paste((input$bins - 32)/1.800," C")
        else
            paste(input$bins * 1.8000 + 32.00, " F")
    })
    
    # Expression that generates a histogram. The expression is
    # wrapped in a call to renderPlot to indicate that:
    #
    #  1) It is "reactive" and therefore should re-execute automatically
    #     when inputs change
    #  2) Its output type is a plot
    
  
    
})