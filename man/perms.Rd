\name{perms} 
\alias{perms}
\title{Permutation}
\description{
 Gives all the permutations of the first integer numbers.
}
\usage{
 perms(n)
}
\arguments{
 \item{n}{Integer}
}
\value{
 \item{z}{Matrix containing in its rows all the permutation of the first \code{n} integer numbers}
}
\references{H.A.L. Kiers (2004). Bootstrap confidence intervals for three-way methods. \emph{Journal of Chemometrics 18:22--36}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
P <- perms(4)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}