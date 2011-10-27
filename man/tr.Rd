\name{tr} 
\alias{tr}
\title{Trace}
\description{
 Computes the trace of a matrix.
} 
\usage{
 tr(a)
}
\arguments{
 \item{a}{Matrix}
} 
\value{
 \item{t}{Trace of \code{A}}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*6),ncol=6)
trace <- tr(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
