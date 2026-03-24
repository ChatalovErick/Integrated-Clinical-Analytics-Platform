# server.R
server <- function(input, output, session) {
  
  output$distPlot <- renderPlot({
    # Use the 'faithful' data loaded in global.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    ggplot(faithful, aes(x = waiting)) +
      geom_histogram(bins = input$bins, fill = "#007bc2", color = "white") +
      theme_minimal() +
      labs(title = "Eruption Waiting Times", x = "Minutes", y = "Frequency")
  })
  
}