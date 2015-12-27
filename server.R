library(shiny)
# Shiny App to convert between Celsius and Fahreinheit
# Define server logic required to convert from Celsius (C) to Fahreinheit (F) or F to C
# This app show how to create a simple shiny app to use input and reactive controls to update the page content
# each time the input is updated. 
# Creating Data Products Course, part of  Data Science Specialization. Coursera
# 2015
# Author: Alvaro Brange
shinyServer(function(input, output) {
    
    output$sourcetemp <- renderText({ 
        #each time input$radio (conversion type) is updated, this code will be executed
        if (input$radio==1)
            paste(input$bins," F")
        else
            paste(input$bins," C")
    })
    
    output$convertedtemp <- renderText({ 
        #each time input$radio or input$bins is updated, the converted value will be updated
        #the output value is calculated on the server, based on input value
        if (input$radio==1)
            paste((input$bins - 32)/1.800," C") #convert from F to C
        else
            paste(input$bins * 1.8000 + 32.00, " F") # convert from C to F
    })
    
})
