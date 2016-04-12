
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
          
        output$bmi <- renderText({ 
                bmi = round(input$Weight / (input$Size / 100)^2, 2)
                paste("Body mass index : ", bmi)                
        })
  
        output$bfp <- renderText({ 
                bmi = input$Weight / (input$Size / 100)^2 
                if (input$Age <= 18) {
                        bfp = 1.51 * bmi - 0.70 * input$Age - 3.6 * as.numeric(input$Sexe) + 1.4
                }
                else {
                        bfp = 1.20 * bmi + 0.23 * input$Age - 10.8 * as.numeric(input$Sexe) -5.4

                }
                paste("Body fat percentage : ", round(bfp,2))
        })
        
        output$category <- renderText({ 
                bmi = input$Weight / (input$Size / 100)^2 
                if (input$Age <= 18) {
                        bfp = 1.51 * bmi - 0.70 * input$Age - 3.6 * as.numeric(input$Sexe) + 1.4
                }
                else {
                        bfp = 1.20 * bmi + 0.23 * input$Age - 10.8 * as.numeric(input$Sexe) -5.4
                        
                }
                if(as.numeric(input$Sexe) == 1) {
                        if(bfp  < 6) {
                                category = "Essential Fat"
                        }
                        else if (bfp < 14) {
                                category = "Athletes"
                        }
                        else if (bfp < 18) {
                                category = "Fitness"
                        }
                        else if (bfp < 25) {
                                category = "Average"
                        }
                        else {
                                category = "Obeses"
                        }
                        
                }
                else {
                        if(bfp < 14) {
                                category = "Essential Fat"
                        }
                        else if (bfp < 21) {
                                category = "Athletes"
                        }
                        else if (bfp < 25) {
                                category = "Fitness"
                        }
                        else if (bfp < 32) {
                                category = "Average"
                        }
                        else {
                                category = "Obeses"
                        }
                }
                paste("Categories : ", category)                
        })
        
})
