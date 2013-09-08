#' Mapbox Marker String for use in API URL
#' 
#' @param marker named vector (latlng,icon,size)
#' @return string 'pin-size-icon(lat,lng)'
#' @examples
#' \dontrun{ 
#' marker = c(size='m',icon='a',latlng='-77,38')
#' make_marker_string(marker)
#' }
make_marker_string = function(marker) {
  marker_latlng = marker['latlng']
  marker = marker[-which(names(marker) == 'latlng')]
  paste(paste(c('pin',marker),collapse='-'),"(",marker_latlng,")",sep="")
}
#' Mapbox Markers URL String for use in API URL
#' 
#' @param markers list of markers
#' @return string '/pin-size-icon(lat,lng),pin-size-icon2(lat,lng)'
#' @examples
#' \dontrun{ 
#' marker = c(size='m',icon='a',latlng='-77,38')
#' mapbox_marker(list(marker))
#' }
mapbox_marker = function(markers) {
  if(length(markers) > 0) paste("/",paste(lapply(markers,FUN=make_marker_string),collapse=','),sep="")
}
marker = c(size='m',icon='a',latlng='-77,38')
markers = list(marker,marker)
