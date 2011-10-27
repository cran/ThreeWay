\name{cent3} 
\alias{cent3}
\title{Centering of a matricized array}
\description{
 Centering of a matricized array across one mode (modes indicated by 1,2, or 3).
} 
\usage{
 cent3(X, n, m, p, mode)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{mode}{Centering option (1 if \code{X} is centered across \code{A}-mode, 2 if \code{X} is centered across \code{B}-mode, 3 if \code{X} is centered across \code{C}-mode)}
} 
\value{
 \item{Y}{Matrix of order (\code{n} \code{x} \code{mp}) containing the centered matricized array (frontal slices)}
}
\references{H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{Cc}}, \code{\link{norm3}}}
\examples{
X <- array(c(rnorm(120)),c(6,5,4))
# matricized array
Y <- supermat(X)
# data centered across A-mode
Z <- cent3(Y$Xa, 6, 5, 4, 1)
apply(Z,2,mean)
# data centered also across B-modes (double centering)
Z <- cent3(Z, 6, 5, 4, 2)
apply(Z,1,mean)
apply(Z,2,mean)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}