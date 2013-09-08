\name{make_marker_string}
\alias{make_marker_string}
\title{Mapbox Marker String for use in API URL}
\usage{
  make_marker_string(marker)
}
\arguments{
  \item{marker}{named vector (latlng,icon,size)}
}
\value{
  string 'pin-size-icon(lat,lng)'
}
\description{
  Mapbox Marker String for use in API URL
}
\examples{
\dontrun{
marker = c(size='m',icon='a',latlng='-77,38')
make_marker_string(marker)
}
}

