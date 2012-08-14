\name{rgl.sphgrid}
\alias{rgl.sphgrid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a spherical plotting grid.
}
\description{
Creates a spherical plotting grid, within which further points can be added. Useful for astronomical plotting in particular, where this becomes the celestial sphere.
}
\usage{
rgl.sphgrid(radius = 1, deggap = 15, longtype = "H", add = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{radius}{
The radial extent of the spherical grid.
}
  \item{deggap}{
The attempted separation between sherical grid lines in degrees.
}
  \item{longtype}{
Specifies if longitudes should be labelled in hours (H- default) or degrees (D).
}
  \item{add}{
Should the grid be added to the current plot, or if FALSE a new rgl device is launched.
}
}
\details{
This function should be called first, and can generally be used with only the declaration of radius to good effect.
}
\value{
No value, used for plotting side effect.
}

\author{
Aaron Robotham
}

\examples{
rgl.sphgrid()
}
\keyword{plot}