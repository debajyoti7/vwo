library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("power",
                  "Power to compute:",
                  min = 1,
                  max = 1000,
                  value = 500)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
    plotOutput("distPlot")
    )
  )
))