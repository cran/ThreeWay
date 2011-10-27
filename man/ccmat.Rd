\name{ccmat} 
\alias{ccmat}
\title{Columns concatenation}
\description{
 Concatenates the columns of two matrices next to each other.
}
\usage{
 ccmat(A, B)
}
\arguments{
 \item{A}{Matrix of the same order of \code{B}}
 \item{B}{Matrix of the same order of \code{A}}
}
\value{
\item{mat}{Matrix in which the columns of \code{A} and \code{B} are concatenated next to each other}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- matrix(rnorm(6*3),ncol=3)
Z <- ccmat(X,Y)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}