#install.packages("shiny")
library(shiny)

shinyUI( pageWithSidebar(
  # Application title
  headerPanel("Build Your Bio"),
  
  sidebarPanel(
    h4("Please provide the inputs in this panel, and your bio will be reactively built on the right panel."),
    textInput('firstname', 'First Name', value = "First"),
    textInput('lastname', 'Last Name', value = "Last"),
    sliderInput('age','Age',min=0,max=120,value=33),
    radioButtons('sex','Sex',choices=c("Male","Female"),selected=NULL),
    fileInput('filename','Your Photo'),
    selectInput("edu", "Education", choices = list("High School", "Bachelors", "Advanced"), selected = NULL), 
    dateInput('docomp',"Date of Completion")
),

  mainPanel(
    h1(textOutput("fullname")),
    h3(textOutput("agestring")),
    h3(textOutput("sexstring")),
    h3(textOutput("highestdeg")),
    h3(textOutput("timesince")),
    #imageOutput("imagefil",width="10%",height="10%",inline=FALSE)
    uiOutput("imagefil")
    
    )
)
)