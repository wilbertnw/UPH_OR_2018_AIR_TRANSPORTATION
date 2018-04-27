library(shiny)
#install.packages("shinyjs")
library(leaflet)
library(jsonlite)
#install.packages("sqldf")
library(sqldf)

AirPlanes=read.csv("AircraftList.csv")

shinyServer(function(input, output) {
  output$mymap <- renderLeaflet({
    
    plane <- makeIcon(
      iconUrl = makeIcon("planeIcon.png"),
      iconWidth = 32, iconHeight = 32,
      iconAnchorX = 22, iconAnchorY = 94
    )
    
    leaflet(data = AirPlanes[1:input$planeCount,]) %>% addTiles() %>% addProviderTiles("Esri.WorldImagery") %>% #Total of 5591 airplanes in the CSV file
      setView(lng=120.92132700000002, lat=-0.789275 , zoom=4 ) %>%
      #leaflet(data = AirPlanes[1:5000,]) %>% addTiles() %>% #Total of 5591 airplanes in the CSV file
      addMarkers(~Longitude, ~Latitude, icon = plane, popup = ~as.character(PlaneModel), label=~as.character(PlaneAirlines))
    
  })
  
})