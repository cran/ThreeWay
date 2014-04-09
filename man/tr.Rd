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
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*6),ncol=6)
trace <- tr(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
