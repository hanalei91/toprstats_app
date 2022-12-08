#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinythemes)
library(DT)

library(cfbfastR)
library(cfbplotR)
library(tidyverse)
library(dplyr)

ui <- fluidPage(
  theme = shinytheme("cosmo"),
  
  navbarPage(
    "TopRStats",
    tabPanel("Player Usage")),
  
  titlePanel("College Football Player Usage: 2014-2022"),
  
  mainPanel(
    DTOutput("table")))

server = function(input,output) {
  output$table <- renderDT(player_usage,
                           filter = "top",
                           options = list(
                             pageLength = 25))}



shinyApp(ui = ui, server = server)