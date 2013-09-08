\name{mapbox}
\alias{mapbox}
\title{Quick mapbox mapping
\code{mapbox} uses ggmap to plot a mapbox static map}
\usage{
  mapbox(center = c(-77.04, 38.89),
    mapbox = "examples.map-vyofok3q", ...)
}
\arguments{
  \item{center}{a latitude and longitude vector c(lat,lng)}

  \item{mapbox}{the mapbox map to display, default to
  example from mapbox}

  \item{...}{arguments for ggmap and arguments for
  get_mapboxmap}
}
\value{
  a ggmap object
}
\description{
  Quick mapbox mapping \code{mapbox} uses ggmap to plot a
  mapbox static map
}
\examples{
\dontrun{
getmap(c(-77.04, 38.89))
#set the zoom
getmap(c(-77.04, 38.89),zoom=14)
#setmapbox map
getmap(c(-77.04, 38.89),mapbox="examples.map-vyofok3q")
#set extent for ggmap
getmap(c(-77.04, 38.89),mapbox="examples.map-vyofok3q",extent='devise')
#add markers to the map
marker = c(size='m',icon='a',latlng='-77,38')
markers = list(marker)
getmap(c(-77.04, 38.89),mapbox="examples.map-vyofok3q",markers=markers)
}
}
\seealso{
  \code{\link{ggmap}}
}

