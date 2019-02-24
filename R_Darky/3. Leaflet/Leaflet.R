data(quakes)
##wow= quakes
library(leaflet)
library(htmlwidgets)
head(quakes)

drawMap = function(mapDf){
    npallette<-c('lightskyblue','deepskyblue3','blue1','purple','red2','red3','red4') 
    palPred <- colorNumeric(palette = npallette, domain = 0:50) 
    ##mapPopup <- getPopup(mapDf)
    mapDf %>% leaflet() %>% setView(lat=3.95,lng=104,zoom=7)
    addProviderTiles(providers$Esri,options=providerTileOptions(maxNativeZoom=12,maxZoom=20)) %>% 
    addMeasure(position = 'topright', primaryLengthUnit = 'meters',primaryAreaUnit = 'sqmeters') %>% 
    addLegend('bottomright',pal=palPred,values=0:maxNum,title='Nameless Map')
}

drawMap(quakes)

npallette<-c('lightskyblue','deepskyblue3','blue1','purple','red2','red3','red4')
palPred <- colorNumeric(palette = npallette, domain = 0:1000) 
##mapPopup <- getPopup(quakes) 
wow = leaflet(quakes) %>% 
    setView(lat=3.95,lng=104,zoom=4) %>%
    addProviderTiles(providers$Esri,options=providerTileOptions(maxNativeZoom=12,maxZoom=20)) %>% 
    addMeasure(position = 'topright', primaryLengthUnit = 'meters',primaryAreaUnit = 'sqmeters') %>%
    #addCircleMarkers(fillColor = ~palPred(as.numeric(quakes$depth)),fillOpacity=075,weight=0, radius=8,clusterOptions=markerClusterOptions()) %>%
    addCircleMarkers(quakes)
    addLegend('bottomright',pal=palPred,values=0:1000,title="Nameless Map")
wow


##----------------- Example for awesome icon
library(leaflet)

icon.glyphicon <- makeAwesomeIcon(icon= 'flag', markerColor = 'blue',
                                  iconColor = 'black', library = 'glyphicon',
                                  squareMarker =  TRUE)
icon.fa <- makeAwesomeIcon(icon = 'flag', markerColor = 'red', library='fa',
                           iconColor = 'black')
icon.ion <- makeAwesomeIcon(icon = 'home', markerColor = 'green',
                            library='ion')

#custom 
quakes %>% leaflet() %>% addTiles() %>%
    addAwesomeMarkers(
        #lng=-118.456554, lat=34.078039,
        ~quakes$long,~quakes$lat,
        label='This is a label',
        icon = icon.glyphicon,
        clusterOptions=markerClusterOptions())


# Marker + Label
leaflet() %>% addTiles() %>%
    addAwesomeMarkers(
        lng=-118.456554, lat=34.078039,
        label='This is a label',
        icon = icon.glyphicon)

leaflet() %>% addTiles() %>%
    addAwesomeMarkers(
        lng=-118.456554, lat=34.078039,
        label='This is a label',
        icon = icon.fa)

leaflet() %>% addTiles() %>%
    addAwesomeMarkers(
        lng=-118.456554, lat=34.078039,
        label='This is a label',
        icon = icon.ion)

# Marker + Static Label using custom label options
leaflet() %>% addTiles() %>%
    addAwesomeMarkers(
        lng=-118.456554, lat=34.078039,
        label='This is a static label',
        labelOptions = labelOptions(noHide = T),
        icon = icon.fa)
##--------------------------------------------------
library(htmlwidgets)
