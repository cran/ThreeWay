\name{orth}
\alias{orth}
\title{Orthonormalization of a matrix}
\description{
 Returns an orthonormal basis for the range of \code{A}. 
} 
\usage{
 orth(A)
} 
\arguments{
 \item{A}{Matrix to be orthogonalized}
} 
\value{
 \item{Q}{Orthonormal basis for the range of \code{A}}
}
\note{
The columns of \code{Q} span the same space as the columns of \code{A} with \code{t(Q)Q=I}. 
\cr The number of columns of \code{Q} is the rank of \code{A}.
} 
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- orth(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}