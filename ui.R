library(shiny)
#Shiny App to convert between Celeius and Fahreinheit
# Define UI for application that draws a histogram
# This app show how to create a simple shiny app to use input and reactive controls to update the page content
# each time the input is updated. 
# Creating Data Products Course, part of  Data Science Specialization. Coursera
# 2015
# Author: Alvaro Brange
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Temperature converter."),
    # Subtitle
    h5("A Fahrenheit/Celsius converter for 'Developing Data Products' Course"),
    h6("Author: A Brange"),
    hr(),
    
    sidebarLayout(
        sidebarPanel(
            #Help and documentation
            h4('Documentation and Help'),
            h5("Please select which unit you want to convert and then, move the slider to select which temperature you which convert."),
            h5("For sake of simplicity, the values to convert are limited in range from -32 to 300."),
            h5("When slider (input) is moved, the value converted will be calculated on server. The original and equivalent values will be displayed on right side of the screen (reactive controls) "),
            br(),
            h4('Step 1:'),
            # Radio button to select which type of unit we want to convert (radio button input)
            radioButtons("radio", label = h3("Select units to convert"),
                         choices = list("Fahrenheit to Celsius" = 1,
                                        "Celsius to Fahreinheit" = 2),selected = 1),
            
            h4('Step 2:'),
            br(),
            # Input 2. A slider to select a temperature to convert. Limited in range from -32 to 300
            # Initial value is 32 F, equivalent to 0 C
            sliderInput("bins",
                        "Select a degree to convert:",
                        min = -32,
                        max = 300,
                        value = 32)
        ),
        
        # Show the original and converted value as a reactive operation. Each time an input is updated, those values are
        # Calculated on the server and returned here
        mainPanel(
            h2(textOutput("sourcetemp")),
            h2("Is equivalent to "),
            h2(textOutput("convertedtemp"))
        )
        
    )
))
