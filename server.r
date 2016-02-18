#install.packages("shiny")
library(shiny)

shinyServer( 
  function(input, output) {
    output$fullname <- renderText(paste(input$firstname,input$lastname,sep=" "))
    output$imagefile <- renderImage({
        return(list(src = input$filename$datapath,
                    height=300,
                    alt="Your portrait here."
                    )
               )
      
      }, deleteFile = TRUE)
    
    
    output$imagefil <- renderUI({
      
        if (is.null(input$filename))
        h5("Your portrait comes here.")
        
      else {
        imageOutput("imagefile",width="10%",height="10%",inline=FALSE)
      }
        
              }
    )
    
    
    
    output$agestring <- renderText(paste(as.character(input$age) ,"years old.",sep=" "))
    output$sexstring <- renderText(paste("Sex:",input$sex ,sep=" "))
    output$highestdeg <-renderText(paste("Highest degree attained:",input$edu ,sep=" "))
    output$timesince <- renderText(paste("Time since degree:",as.character(as.numeric(Sys.Date() - input$docomp)),"days" ,sep=" "))
  })
    
    