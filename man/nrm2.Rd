\name{nrm2} 
\alias{nrm2}
\title{ Columnwise normalization of a matrix}
\description{
 Computation of a columnwise normalized version of a matrix.
}
\usage{
 nrm2(A)
}
\arguments{
  \item{A}{Matrix of any order}
}
\value{
 \item{N}{Matrix columnwise normalized}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{Cc}}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- nrm2(X)
apply(Y^2, 2, sum)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
