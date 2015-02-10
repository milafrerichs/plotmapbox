# plotmapbox

Plotting Mapbox Static Maps with R and ggplot2

```
library(devtools)
install_github("rbdixon/plotmapbox")
library(plotmapbox)

DATA = data.frame(
  lat = rnorm(10, mean=37),
  lon = rnorm(10, mean=-85)
  )

p=map_png( getmapbox_map(center=c(-85, 37), mapbox="<mapbox.key>", zoom=7) ) +
  geom_point(aes(lon, lat), data=DATA)
print(p)
```
