
url = "http://api.tiles.mapbox.com/v3/examples.map-vyofok3q/pin-m-monument+48C(-77.04,38.89)/-77.04,38.89,13/400x300.png"
destfile = "test.png"
ret <- download.file(url, destfile, mode="wb", quiet = FALSE);

getmap = function(latlng=c(),mapbox='',size=c(640,480),filename='map.png') {
  url = paste("http://api.tiles.mapbox.com/v3/",map/latlng[1],',',latlng[2],'/',size[1],'x',size[2],'.png')
  ret <- download.file(url, filename, mode="wb", quiet = FALSE);  
}