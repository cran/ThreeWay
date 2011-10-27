\name{rarray} 
\alias{rarray}
\title{Array reconstruction}
\description{
 Produces an array starting from its matricization with all the frontal slices of the array next to each other.
}
 \usage{rarray(Xa, n, m, p)
}
\arguments{
 \item{Xa}{Matrix (or data.frame coerced to a matrix) containing the elements of the frontal slices of an array}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
} 
\value{
 \item{X}{Array leading to \code{Xa}}
}
\references{H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
# matricized array (frontal slice)
Xa <- matrix(1:8,nrow=2)
X <- rarray(Xa, 2, 2, 2)
# original array
X
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
