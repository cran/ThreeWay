\name{permnew} 
\alias{permnew}
\title{Permutation of a matricized array}
\description{
 Permutes the matricized (\code{n} \code{x} \code{m} \code{x} \code{p}) array \code{X} to the matricized array \code{Y} of order (\code{m} \code{x} \code{p} \code{x} \code{n}).
} 
\usage{
 permnew(X,n,m,p)
}
\arguments{
  \item{X}{Matrix (or data.frame coerced to a matrix) containing the matricized array}
  \item{n}{Number of \code{A}-mode entities of the array \code{X}}
  \item{m}{Number of \code{B}-mode entities of the array \code{X}}
  \item{p}{Number of \code{C}-mode entities of the array \code{X}}
}
\value{
  \item{Y}{Matrix containing the permuted matricized array}
} 
\references{H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
X <- array(c(rnorm(120)),c(6,5,4))
dim(X)
# matricized array
Xa <- supermat(X)$Xa
# matricized X with the A-mode entities in its rows
dim(Xa)
# matricized X with the B-mode entities in its rows
Xb <- permnew(Xa, 6, 5, 4)
dim(Xb)
# matricized X with the C-mode entities in its rows
Xc <- permnew(Xb, 5, 4, 6)
dim(Xc)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
