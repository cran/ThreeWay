\name{norm3} 
\alias{norm3}
\title{Normalization of a matricized array}
\description{
 Normalization of a matricized array within one mode (modes indicated by 1,2, or 3) to sum of squares equal to product of size of other modes.
} 
\usage{
 norm3(X, n, m, p, mode)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{mode}{Normalization option (1 if \code{X} is normalized within \code{A}-mode, 2 if \code{X} is normalized within \code{B}-mode, 3 if \code{X} is normalized within \code{C}-mode)}
}
\value{
 \item{Y}{Matrix of order (\code{n} \code{x} \code{mp}) containing the normalized matricized array (frontal slices)}
}
\references{H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{cent3}}, \code{\link{nrm2}}}
\examples{
X <- array(c(rnorm(120)), c(6,5,4))
# matricized array
Y <- supermat(X)
# data normalized within A-mode
Z <- norm3(Y$Xa, 6, 5, 4, 1)
apply(Z^2,1,sum)
# data normalized within C-mode
Z <- norm3(Y$Xa, 6, 5, 4, 3)
Z <- permnew(Z, 6, 5, 4)
Z <- permnew(Z, 5, 4, 6)
apply(Z^2, 1, sum)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}