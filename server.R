library(shiny)
library(ggplot2)
mtcars$am<-as.factor(mtcars$am)
shinyServer(function(input, output) {
  output$ggplot <- renderPlot({
    ggplot(mtcars, aes_string(x = input$var1, y = input$var2)) + 
      geom_point(aes_string(col=input$vcol))+
      geom_smooth(method="lm",formula=y~poly(x,as.numeric(input$poly)),se=as.numeric(input$sec))
  })
})


