library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("ACS Explorer"),

  sidebarPanel(

    radioButtons("lod", "Choose a Level of Detail:",
                     list("State" = "state",
                          "County" = "county",
                          "Zip" = "zip")),

     checkboxInput("single_state",
          label = strong("View a single state"),
          value = FALSE),

    selectInput("state", "Choose a state:", 
                  choices = state.abb)
    ),

  mainPanel(
    h3(textOutput("title")),

    plotOutput("choro"),

    dataTableOutput("table")

  )
))
