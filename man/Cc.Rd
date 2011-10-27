\name{Cc} 
\alias{Cc}
\title{Columnwise centering of a matrix}
\description{
 Computation of a columnwise centered version of a matrix.
}
\usage{
 Cc(A)
} 
\arguments{
 \item{A}{Matrix of any order}
} 
\value{
 \item{Ac}{Matrix columnwise centered}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{nrm2}}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- Cc(X)
apply(Y,2,mean)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}