#' Plotting image with ggmap
#' \code{map_png} uses ggmap to plot a map image
#' 
#' @param map_info named vector contains the info for the map:
#' center: c(lat,lng)
#' filename: string
#' size: c(w,h)
#' zoom: int
#' @param ... arguments for ggmap
#' @return a ggmap object
#' @seealso \code{\link{ggmap}}
map_png = function(map_info,...) {
  ggmap(readmaptile(map_info),...)
}