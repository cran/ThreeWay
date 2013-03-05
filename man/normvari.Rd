\name{normvari} 
\alias{normvari}
\title{Normalized varimax rotation}
\description{
 Produces normalized varimax rotated version of \code{A} and rotation matrix \code{T}.
} 
\usage{
 normvari(A)
}
\arguments{
 \item{A}{Matrix to be to be rotated}
}
\value{
 A list including the following components:
 \item{B}{Rotated version of \code{A} (\code{B=AT})}
 \item{T}{Rotation matrix}
 \item{f}{Varimax function value}
} 
\references{H. Kaiser (1958). The varimax criterion for analytic rotation in factor analysis. \emph{Psychometrika 23:187--200}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{varim}}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
Y <- normvari(X)
# normalized varimax rotated version of X
Y$B
# rotation matrix
Y$T
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}