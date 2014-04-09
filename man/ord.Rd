\name{ord} 
\alias{ord}
\title{Order}
\description{
 In case of vectors, an ordering of its elements in ascending order is produced; in case of matrices, the ordering in ascending order refers to every column.
} 
\usage{
 ord(X)
}
\arguments{
\item{X}{Vector or matrix to be ordered}
}
\value{
 \item{A}{Vector or matrix with the elements sorted in ascending order}
 \item{a}{Vector or matrix with the ordering indices}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
# vector
x <- rnorm(6)
y <- ord(x)
# matrix
X <- matrix(rnorm(6*3),ncol=3)
Y <- ord(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
