\name{mapbox_marker}
\alias{mapbox_marker}
\title{Mapbox Markers URL String for use in API URL}
\usage{
  mapbox_marker(markers)
}
\arguments{
  \item{markers}{list of markers}
}
\value{
  string '/pin-size-icon(lat,lng),pin-size-icon2(lat,lng)'
}
\description{
  Mapbox Markers URL String for use in API URL
}
\examples{
\dontrun{
marker = c(size='m',icon='a',latlng='-77,38')
mapbox_marker(list(marker))
}
}

