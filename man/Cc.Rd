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
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{nrm2}}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- Cc(X)
apply(Y,2,mean)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}