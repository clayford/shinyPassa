
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Sample Size Analysis - One-Sample Proportion"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        sliderInput("p1",
                  "Alternate proportion:",
                  min = 0.01,
                  max = 0.99,
                  value = 0.60),
        sliderInput("p2",
                  "Null proportion:",
                  min = 0.01,
                  max = 0.99,
                    value = 0.50),
        sliderInput("power",
                  "Power:",
                  min = 0.80,
                  max = 0.99,
                  value = 0.80),
        sliderInput("sig.level",
                  "Significance Level:",
                  min = 0.01,
                  max = 0.2,
                  value = 0.05),
        selectInput("alternative", "Alternative:", 
                  choices = list("two.sided" = "two.sided", "less" = "less", "greater" = "greater"), 
                  selected = 1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("powerPlot", height = "500px")
    )
  )
))
