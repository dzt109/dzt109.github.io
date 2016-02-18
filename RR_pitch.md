---
title       : Bio builder
subtitle    : My first Shiny App
author      : Deepak Trivedi
job         : Creater
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Bio builder

1. Bio builder is my first Shiny App
2. My objective here was to use as many input and output methods as possible
3. The following slides will outline the input and output methods used

The URL to the app is https://deeptrivia.shinyapps.io/buildbio/


--- .class #id 

## Input Methods

Here is a list of all the input methods used.

1. textInput  - Used to input strings - Firstname and Lastname
2. sliderInput - Slider used to input age.
3. radioButtons - Used to input Sex
4. fileInput - Used to upload photo
5. selectInput - Dropdown menu used to input educational level
6. dateInput - Used to input graduation date 

--- .class #id 

## Output Methods and Server.R

Here is a list of all the output methods used.
1. textOutput  - Used to output strings
2. imageOutput - Used to output images
3. uiOutput - Used to output a string or image dynamically based on input

Server.R does the following:
1. Concatenates various inputs to product output strings
2. Processes uploaded image for uiOutput
3. Performs time since degree calculation as shown below.


```r
todaysdate <- Sys.Date()
inputdate <- as.Date("2000-05-01")
outstring<- paste("Time since degree:",as.character(as.numeric(todaysdate - inputdate)),"days" ,sep=" ")
outstring
```

```
## [1] "Time since degree: 5767 days"
```

--- .class #id 

## Summary

This short app demonstrates a bunch of different input and output methods, as well as some background computations (such as an elapsed time calculation.)

This is a very efficient way to deploy responsive apps. 

--- .class #id 

## References
1. https://www.youtube.com/watch?v=HPZSunrSo5M
2. https://rpubs.com/miguelpatricio/slidify
3. http://shiny.rstudio.com/articles/images.html
4. http://shiny.rstudio.com/reference/shiny/latest/textOutput.html
5. http://shiny.rstudio.com/articles/cheatsheet.html

