
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Body Fat Percentage"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      fluidRow(
                column(6, 
                       numericInput("Weight", 
                                    label = h3("Enter your weight (in Kg)"), 
                                    value = 60)),
                column(6, 
                       numericInput("Size", 
                                    label = h3("Enter your height (in cm)"), 
                                    value = 170))
      ),            
      sliderInput("Age",
                  h3("Select your age:"),
                  min = 8,
                  max = 100,
                  value = 30),
      radioButtons("Sexe", 
                   h3("Choose your sex:"),
                   choices = list("Female" = 0, "Male" = 1),
                   selected = 0)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h3(textOutput("bmi")),
      h3(textOutput("bfp")),
      h3(textOutput("category")),
      br(),
      br(),
      br(),
      br(),
      br(),
      h4("Medical Disclaimer :"),
      p("This application is not intended to be a substitute for professional
         medical advice, diagnosis, or treatment."),
      p("Always seek the advice of your physician or other qualified health 
         provider with any questions you may have regarding a medical condition."),
      br(),
      h4("Source : "),
      a(href = "https://en.wikipedia.org/wiki/Body_fat_percentage",
        "https://en.wikipedia.org/wiki/Body_fat_percentage")
      
    )
  )
))
