library(googleVis)

library(shiny)

#data source: http://ec.europa.eu/eurostat/web/lfs/data/database
#import data
Unemployment_data=read.csv2("mydata.csv", header = TRUE, sep = ",")

#display data
Unemployment_data


#create motion
Motion=gvisMotionChart(Unemployment_data,idvar="Country",timevar="Year",options=list(state='{"colorOption":"_UNIQUE_COLOR","showTrails":false};'))
plot(Motion)

shinyServer(
  function(input, output) {
    output$unemployment <- renderGvis({Motion})
  }
) 
