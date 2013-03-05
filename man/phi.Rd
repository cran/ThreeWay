\name{phi} 
\alias{phi}
\title{Phi coefficient}
\description{
 Computes the phi coefficients among columns of two matrices.
} 
\usage{
 phi(a,b)
} 
\arguments{
 \item{a}{Vector or matrix of the same order of \code{b}}
 \item{b}{Vector or matrix of the same order of \code{a}}
}
\value{
 \item{p}{Matrix containing the phi coefficients}
}
\references{L.R Tucker (1951). A method for synthesis of factor analysis studies. \emph{Personnel Research Section Report No. 984}. Department of the Army, Washington, DC.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- matrix(rnorm(6*3),ncol=3)
P <- phi(X,Y)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
