% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grid.R
\name{rasterize}
\alias{rasterize}
\alias{rasterize,trip,RasterLayer-method}
\alias{rasterize,trip,missing-method}
\title{Rasterize trip objects based on line-segment attributes.}
\arguments{
\item{x}{\code{trip} object}

\item{y}{Raster* object}

\item{field}{attribute from which differences will be calculated, defaults to the time-stamp between trip locations}
}
\value{
RasterLayer
}
\description{
Trip rasterize.
}
\examples{
 d <- data.frame(x=1:10, y=rnorm(10), tms=Sys.time() + 1:10, id=gl(2, 5))
sp::coordinates(d) <- ~x+y
## this avoids complaints later, but these are not real track data (!)
sp::proj4string(d) <- sp::CRS("+proj=laea +ellps=sphere", doCheckCRSArgs = FALSE)
tr <- trip(d, c("tms", "id"))

tr$temp <- sort(runif(nrow(tr)))
r <- rasterize(tr)

rasterize(tr, grid = r)
rasterize(tr, r, field = "temp")
\dontrun{
rasterize(tr, method = "density")
rasterize(tr, method = "density", grid = r)

rasterize(tr, r, field = "tms")
rasterize(tr, r)


library(raster)
r2 <- aggregate(r, fact = 4)
rasterize(tr, grid = r2)
rasterize(tr, method = "density")
rasterize(tr, method = "density", grid = r2)
rasterize(tr, r2, field = "temp")
rasterize(tr, r2, field = "tms")
rasterize(tr, r2)
}

}
