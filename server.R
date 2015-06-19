
secretNumber <- round(runif(1) * 10, digits = 0)
#guess2secret <- function(guess) ifelse(guess==secretNumber,"Correct!","Wrong!") 

guess2secret <- function(guess) {
  if (guess==0)
  {cat("Magic will happen here soon")}
  else if (guess==secretNumber)
    { cat("Congratulations,", secretNumber, "is right.")}
  else { cat("sorry, that is wrong. the secret number was ", secretNumber)}
}

shinyServer(
  function(input, output) {

    output$inputValue <- renderPrint({input$guess})
   # output$secretNumber <- renderPrint({secretNumber})
    output$Score <- renderPrint({guess2secret(input$guess)})
  }
)