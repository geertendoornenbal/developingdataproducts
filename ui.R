library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Is it a prime number?"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      h2("Prime tests"),
      p("Please supply a number that you want to be tested for the quality of being prime or not."),
      
      numericInput("testNumber",
                  "Number to test:",
                  1),
      submitButton("Submit")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h2("Results"),
      p("Was your number ",strong(textOutput("inputNum",inline =TRUE))," a prime number?"),
      strong(textOutput("result")),
      br(),
      p(textOutput("errorMessage")),
      p("Please find the corresponding code for this project at:"),
      a("Github repository containing the code",href="https://github.com/geertendoornenbal/developingdataproducts")
      )
    )
  )
)