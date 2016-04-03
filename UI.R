library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Developing Data Products - Course Project'),
    
    sidebarPanel(
        radioButtons('cyl', 'Select No. of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), # example of radio button input
        numericInput('hp', 'Input Horsepower:', 100, min = 50, max = 330, step = 10), # example of numeric input
        numericInput('wt', 'Input Weight (lbs):', 2300, min = 1500, max = 5500, step = 100)
    ),
    mainPanel(
        h3('Using mtcars dataset for prediction'),    
        h4('Values you selected entered:'),
        verbatimTextOutput("inputValues"),
        h4('Prediction:'),
        verbatimTextOutput("prediction"),
        h4('PLOT'),
        plotOutput('plots')
    )
))
