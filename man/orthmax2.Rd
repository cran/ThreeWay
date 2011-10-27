\name{orthmax2} 
\alias{orthmax2}
\title{Orthomax Rotation}
\description{
 Produces a simultaneous orthomax rotation of two matrices (using one rotation matrix).
} 
\usage{
 orthmax2(A1, A2, gam1, gam2, conv)
}
\arguments{
 \item{A1}{First matrix to be rotated with the same number of columns of A2}
 \item{A2}{Second matrix to be rotated with the same number of columns of A1}
 \item{gam1}{orthmax parameter for \code{A1}} 
 \item{gam2}{orthmax parameter for \code{A2}}
 \item{conv}{Optional convergence value (default 1e-6)}
} 
\value{
A list including the following components: 
\item{B1}{Rotated version of \code{A1}} 
\item{B2}{Rotated version of \code{A2}}
\item{T}{Rotation matrix}
\item{f}{Orthomax function value}
} 
\note{The function to be maximized is \eqn{f=sum((A1^2)-1/m1*gam1*sum((sum(A1^2))^2))^2+sum((A2^2)-1/m2*gam2*sum((sum(A2^2))^2))^2}}
\references{R. Jennrich (1970). Orthogonal rotation algorithms. \emph{Psychometrika 35:229--235}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}}
\seealso{\code{\link{varim}}}
\examples{
X <- matrix(rnorm(8*3),ncol=3)
Y <- matrix(rnorm(6*3),ncol=3)
orthXY <- orthmax2(X,Y,1,2)
# rotated version of X
orthXY$B1
# rotated version of Y
orthXY$B2
# rotation matrix
orthXY$T
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
