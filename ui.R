#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  headerPanel("Word Predictive Analytics Application - Aplicación de Analisis Predictivo de Palabras - Presentado por Diego Sanchez de Colombia"),
  
  sidebarPanel(
    
    textInput("text", 
              label = h3("Enter text / Ingrese el texto:"), 
              value = "I live in "),
    h6(em("Note: The application does not require you to press ok / La aplicación no requiere que presiones Ok")),
    h6(em("Note: The application ignores numbers and special characters / Esta Aplicación no tiene en cuenta numeros o caracteres especiales")),
    
    submitButton("OK")
    
  ),
  
  mainPanel(
    h4("Predicted next work from twitter dataset:"),
    verbatimTextOutput("twitter_next"),
    h4("Predicted next work from blogs dataset:"),
    verbatimTextOutput("blogs_next"),
    h4("Predicted next work from news dataset:"),
    verbatimTextOutput("news_next"),

    h6("All codes can be found in folder at / Todo el codigo puede ser encontrado en:"),
    h6(a("https://github.com/dfsanchez2020/DataCapstoneProjectFinal.git")),
    
    tags$footer(tags$script(src="autosubmit.js"))
      
    )
  
  ))