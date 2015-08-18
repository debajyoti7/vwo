shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    VWO_Q1 <- read.csv("~/Documents/DTMC/VWO_Q1.csv", row.names=1)
    VWO_Q1 <- as.matrix(VWO_Q1)
    
    mat_power <- input$power
    
    library(expm)
    res <- VWO_Q1 %^% mat_power
    
    # draw the histogram with the specified number of bins
    library(gplots)
    heatmap.2(res, dendrogram = "none")
  })
})