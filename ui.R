shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Guessing Game"),
    
    sidebarPanel(
      numericInput('guess', 'Guess an integer between 0 and 10', 0, min = 0, max = 10, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Guessing Game'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      #h4('The computer had a secret Number of '),
      #verbatimTextOutput("secretNumber"),
      h4('Which resulted in a score of '),
      verbatimTextOutput("Score")
    )
  )
)