library(shiny)

is.prime <- function(num) {
  if (num == 2) {
    TRUE
  } else if (any(num %% 2:(num-1) == 0)) {
    FALSE
  } else { 
    TRUE
  }
}

is.wholenumber <-  function(x, tol = .Machine$double.eps^0.5)  abs(x - round(x)) < tol

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$inputNum <- renderText({input$testNumber })
  output$result <- renderText({
    if(is.wholenumber(input$testNumber))
    {
      if(input$testNumber > 0)
      {
        if(is.prime(input$testNumber))
        {
          "Yes!" 
        }
        else
        {
          "No."
        }
      }
      else
      {
        "No."
      }
    }
    else
    {
      "No."
    }
  })
  output$errorMessage <- renderText({
    if(input$testNumber < 0)
    {
      "Negative numbers are by definition not prime."
    }
    else if(!is.wholenumber(input$testNumber))
    {
      "Non integral numbers are by definition not prime."
    }
  })
})