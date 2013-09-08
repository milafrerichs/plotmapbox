#' Get mapbox map
#' \code{getmapbox_map} uses the Mapbox Static API to get map images 
#' 
#' @param center a latitude and longitude vector c(lat,lng)
#' @param mapbox the mapbox map to display, default to example from mapbox
#' @param zoom the map zoom stage (1-21)
#' @param size a width and height vector c(width,height)
#' @param filename the name for the saved map
#' @param markers a list of markers 
#' @param ... arguments for ggmap and arguments for get_mapboxmap
#' @return a list of meta information (filename,center,zoom,size)
#' @seealso \code{\link{ggmap}}

getmapbox_map = function(center=c(),mapbox='examples.map-vyofok3q',zoom=13,size=c(640,480),filename='map.png',markers=list()) {
  url = paste("http://api.tiles.mapbox.com/v3/",mapbox,mapbox_marker(markers),'/',center[1],',',center[2],',',zoom,'/',size[1],'x',size[2],'.png',sep="")
  ret = download.file(url, filename, mode="wb", quiet = FALSE)
  map_meta = list(filename=filename,center=center,zoom=zoom,size=size)
  
  return(map_meta)
}