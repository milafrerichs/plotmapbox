make_marker_string = function(marker) {
  marker_latlng = marker['latlng']
  marker = marker[-which(names(marker) == 'latlng')]
  paste(paste(c('pin',marker),collapse='-'),"(",marker_latlng,")",sep="")
}
get_marker = function(markers) {
  if(length(markers) > 0) paste("/",paste(lapply(markers,FUN=make_marker_string),collapse=','),sep="")
}
getmap = function(center=c(),mapbox='',zoom=13,size=c(640,480),filename='map.png',markers=list()) {
  url = paste("http://api.tiles.mapbox.com/v3/",mapbox,get_marker(markers),'/',center[1],',',center[2],',',zoom,'/',size[1],'x',size[2],'.png',sep="")
  ret = download.file(url, filename, mode="wb", quiet = FALSE);
  map_meta = list(file=ret, filename=filename,center=center,zoom=zoom,size=size);
  
  return(map_meta);
}
marker = c(size='m',icon='a',latlng='-77,38')
markers = list(marker,marker)
#getmap(c(-77.04, 38.89),"examples.map-vyofok3q",markers=markers)