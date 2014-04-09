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
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{Cc}}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- nrm2(X)
apply(Y^2, 2, sum)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
