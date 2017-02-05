library(shiny)
shinyUI(fluidPage(
  titlePanel("The great mtcars analysis engine"),
  sidebarLayout(
    sidebarPanel(
      selectInput("var1", "X variable", choices = names(mtcars)),
      selectInput("var2", "Y variable", choices = names(mtcars),selected = "hp"),
      selectInput("vcol", "Colour variable", choices = c("gear","am","cyl"),selected = "gear"),
      sliderInput("poly","Degree of polynomial",min=1,max=15,step=1,value=1),
      checkboxInput("sec","Confidence Interval")
    ),
    mainPanel(plotOutput("ggplot"))
  )
  
))


?aes_string
