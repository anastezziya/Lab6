library(shiny)
source("script.R")
shinyUI(pageWithSidebar(
  headerPanel("Температура міста Івано-Франківськ за 2016-2017 рік"),
  sidebarPanel(
    selectInput("month", "Виберіть місяць:", choices=months())
  ),
  mainPanel(
    plotOutput("plot"),hr(),
    textOutput("text")
  )
))