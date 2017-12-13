source("script.R")
data <- read.xls()
draw <- function(month){
  plotValues <- dataByMonth(data, month)
  if(!is.null(plotValues)){
    plot(1:nrow(plotValues), plotValues[, 2], type = "l", xaxt = "n", xlab = "Місяць", ylab = "Температура в градусах")
    axis(1, at = 1:nrow(plotValues),  labels = plotValues[, 1])
  }
}
shinyServer(
  function(input, output) {
    output$plot <- renderPlot({
      draw(input$month)
    })
  }
)