\name{supermat} 
\alias{supermat}
\title{Matrix unfolding}
\description{
 Produces matricizations of a three-way array into matrices denoted as super-matrices.
}
\usage{
 supermat(X)
}
\arguments{
 \item{X}{Array to be unfolded}
}
\value{
 A list including the following components:
 \item{Xa}{Super-matrix with \code{B}-mode entities nested within \code{C}-mode entities (all the frontal slices of the array next to each other)}
 \item{Xb}{Super-matrix with \code{C}-mode entities nested within \code{A}-mode entities (all the horizontal slices of the array next to each other)}
 \item{Xc}{Super-matrix with \code{A}-mode entities nested within \code{B}-mode entities (all the lateral slices of the array next to each other)}
}
\references{H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
# array (2x2x2) with integers from 1 to 8
X <- array(1:8,c(2,2,2))
Y <- supermat(X)
# matricized arrays
Y$Xa
Y$Xb
Y$Xc 
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}