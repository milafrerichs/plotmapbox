getmapbox_map = function(center=c(),mapbox='examples.map-vyofok3q',zoom=13,size=c(640,480),filename='map.png',markers=list()) {
  url = paste("http://api.tiles.mapbox.com/v3/",mapbox,mapbox_marker(markers),'/',center[1],',',center[2],',',zoom,'/',size[1],'x',size[2],'.png',sep="")
  ret = download.file(url, filename, mode="wb", quiet = FALSE)
  map_meta = list(filename=filename,center=center,zoom=zoom,size=size)
  
  return(map_meta)
}