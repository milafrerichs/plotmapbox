make_marker_string = function(marker) {
  marker_latlng = marker['latlng']
  marker = marker[-which(names(marker) == 'latlng')]
  paste(paste(c('pin',marker),collapse='-'),"(",marker_latlng,")",sep="")
}
mapbox_marker = function(markers) {
  if(length(markers) > 0) paste("/",paste(lapply(markers,FUN=make_marker_string),collapse=','),sep="")
}
marker = c(size='m',icon='a',latlng='-77,38')
markers = list(marker,marker)
