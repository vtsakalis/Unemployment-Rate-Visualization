library(shiny)
shinyUI(fluidPage(
  headerPanel("Unemployment data"),
  sidebarLayout(position = "right",
                sidebarPanel(
                  tabsetPanel(type = "tabs", 
                              tabPanel("Description",
                                       h5('This visualization highlights how unemployment rate rockets up in European Union between 2006 and 2015. The visualization can be shown through a bubble chart, a bar chart or a line chart. Please choose accordingly on the top right of the plot.'),
                                       h5('For more emphasis choose to size based on "Rate" instead of "same size", and check any country, from the drop down list of countries.'),
                                       h5('There is also an option to choose different variable on the x-axis, such as Time, and on the y-axis, as well as their scale, i.e. linear or log. Finally, tick the trail option on the lower right if you wish to see the trail of the chosen countries throughout the visualization.')
                                       
                              ),        
                              tabPanel("License",
                                       h5('Data Source:',a("Reference Link", href="http://ec.europa.eu/eurostat/web/lfs/data/database")),
                                       
                                       HTML('<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Unemployment Data Visualization</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.'),
                                       br()
                              ) 
                  )),
                mainPanel(
                  htmlOutput("unemployment")
                ))
))
