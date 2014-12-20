library(shiny)
library(caret)
library(kernlab)
library(randomForest)
library(e1071)
data(spam)

prediction <- function (percentage)
{
  set.seed(999)
  prob=percentage/100
  inTrain<-createDataPartition(y=spam$type, p=prob, list=FALSE)
  training<-spam[inTrain,]
  testing<-spam[-inTrain,]
  modelFit<-randomForest(type ~., data=training)
  predictions<-predict(modelFit, newdata=testing)
  confusionMatrix(predictions, testing$type)
}

shinyServer(
  function(input,output) {
    output$percentageTrain<-renderPrint({input$percentage})
    output$percentageTest<-renderPrint({100-input$percentage})
    output$modelFit<-renderPrint({prediction(input$percentage)})
  }
)