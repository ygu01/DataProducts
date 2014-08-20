# ui.R

shinyUI(fluidPage(
  titlePanel("Optical Resolution Calculator"),
  
  sidebarLayout(
    sidebarPanel( h6("Optical resolution describes the ability of an imaging system to resolve detail in the object that is being imaged.It is related with the emission wavelength and the numerical aperture of the optics."),
                  h6("Change the wavelength and the numerical aperture with the slide bar to see the change of the point spread function of the optical system and the resolution below the plot."),
                  sliderInput("wavelength",
                              "Change the emission wavelength (nm):",
                              min = 200,
                              max = 1000,
                              value = 500),
                  sliderInput("numericalAperture",
                              "Change the Numerical Aperture Value:",
                              min = 0.1,
                              max = 1.7,
                              value = 1.0)
    ),
    mainPanel(
      plotOutput("PSFplot"),
      textOutput("text1")
    )
  )
  
))

