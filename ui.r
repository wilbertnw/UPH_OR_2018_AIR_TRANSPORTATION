library(shiny)
#install.packages("shinydashboard")
library(shinydashboard)
#install.packages("leaflet")
library(leaflet)
## leafletOutput is used at the ui side to display the rendered map.

shinyUI(fluidPage(
  headerPanel(h1("Airplane Tracker", align = "center")),
  br(),
  div(h5("slide the dashboard to see more Planes"), align = "center"),
  br(),
  sliderInput("planeCount","Amount of Planes",10,5000,20),
  leafletOutput("mymap")
  
))
