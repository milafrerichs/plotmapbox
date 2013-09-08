
getmap = function(center=c(),mapbox='',zoom=13,size=c(640,480),filename='map.png',marker=c()) {
  url = paste("http://api.tiles.mapbox.com/v3/",mapbox,'/',center[1],',',center[2],',',zoom,'/',size[1],'x',size[2],'.png',sep="")
  ret = download.file(url, filename, mode="wb", quiet = FALSE);
  map_meta = list(file=ret, filename=filename,center=center,zoom=zoom,size=size);
  
  return(map_meta);
}