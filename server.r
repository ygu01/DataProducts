library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a PSF. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$PSFplot <- renderPlot({
    x   <- seq(-1000,1000,length=1000)
    y   <- dnorm(x,mean=0, sd=0.61*input$wavelength/input$numericalAperture/3)
    plot(x,y, type="l", lwd=1,main="Point Spread Function",xlab="Distance from Centroid (nm)",ylab="Intensity")

  })
  output$text1 <- renderText({ 
    paste("The resolution is", 0.61*input$wavelength/input$numericalAperture)
  })
})