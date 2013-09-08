mappng = function(map_info,...) {
  maprange = FALSE
  extent = 'device'
  base_layer = 'auto'
  legend <- 'right'
  padding <- .02
  darken <- c(0, 'black')
  
  ggmap(readmaptile(map_info),...)
}