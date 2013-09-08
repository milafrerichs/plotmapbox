\name{getmapbox_map}
\alias{getmapbox_map}
\title{Get mapbox map
\code{getmapbox_map} uses the Mapbox Static API to get map images}
\usage{
  getmapbox_map(center = c(),
    mapbox = "examples.map-vyofok3q", zoom = 13,
    size = c(640, 480), filename = "map.png",
    markers = list())
}
\arguments{
  \item{center}{a latitude and longitude vector c(lat,lng)}

  \item{mapbox}{the mapbox map to display, default to
  example from mapbox}

  \item{zoom}{the map zoom stage (1-21)}

  \item{size}{a width and height vector c(width,height)}

  \item{filename}{the name for the saved map}

  \item{markers}{a list of markers}

  \item{...}{arguments for ggmap and arguments for
  get_mapboxmap}
}
\value{
  a list of meta information (filename,center,zoom,size)
}
\description{
  Get mapbox map \code{getmapbox_map} uses the Mapbox
  Static API to get map images
}
\seealso{
  \code{\link{ggmap}}
}

