library(shiny)


shinyUI(
  pageWithSidebar(
    
  #Application Title
  headerPanel("Spam Prediction"),
  
  
  sidebarPanel(
    h5('The purpose of this application is to determine the impact of the amount of training data on the accuracy of the prediction algorithm. The prediction algorithm used is based on the random forest machine learning method using the spam dataset.'),
    numericInput('percentage','Percentage of data used for training (%)', 10, min=1, max =99, step=1),
    submitButton('Submit')
    ),
  mainPanel(
    h3('Results of prediction'),
    h4('The percentage of data used for training is'),
    verbatimTextOutput("percentageTrain"),
    h4('The percentage of data used for testing is'),
    verbatimTextOutput("percentageTest"),
    h4('Confusion Matrix with Prediction Accuracy'),
    verbatimTextOutput("modelFit")
    )
  ))