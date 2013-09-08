readmaptile = function(map_info) {
  map = try(readPNG(map_info$filename), silent = T)
  
  map <- apply(map, 2, rgb)
  map <- as.raster(map)
  class(map) <- c('ggmap','raster')
  ll <- XY2LatLon(
    list(lat = map_info$center[2], lon = map_info$center[1], zoom = map_info$zoom),
    -map_info$size[1]/2 + 0.5,
    -map_info$size[2]/2 - 0.5
  )
  ur <- XY2LatLon(
    list(lat = map_info$center[2], lon = map_info$center[1], zoom = map_info$zoom),
    size[1]/2 + 0.5,
    size[2]/2 - 0.5
  )  
  bbox = data.frame(
    ll.lat = ll[1], ll.lon = ll[2],
    ur.lat = ur[1], ur.lon = ur[2]
  )
  names(bbox)[1] = "ll.lat"
  names(bbox)[2] = "ll.lon"
  names(bbox)[3] = "ur.lat"
  names(bbox)[4] = "ur.lon"
  attr(map, "bb") = bbox
  return(map);
  
}