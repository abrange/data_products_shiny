library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Temperature converter."),
    # Subtitle
    h5("A Fahrenheit/Celsius converter for 'Developing Data Products' Course"),
    hr(),
    
    sidebarLayout(
        sidebarPanel(
            # Radio button to select which type of unit we want to convert
            radioButtons("radio", label = h3("Select an option"),
                         choices = list("Fahrenheit to Celsius" = 1,
                                        "Celsius to Fahreinheit" = 2),selected = 1),
            # Sidebar with a slider input for the number of bins
            sliderInput("bins",
                        "Select a degree to convert:",
                        min = -32,
                        max = 300,
                        value = 32)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            h2(textOutput("sourcetemp")),
            h2("Is equivalent to "),
            h2(textOutput("convertedtemp"))
        ),
        
    )
))