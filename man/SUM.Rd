\name{SUM} 
\alias{SUM}
\title{Summary}
\description{
 Summary of the elements of a matrix.
} 
\usage{
 SUM(A)
}
\arguments{
\item{A}{Matrix or data.frame (coerced to a matrix)}
}
\value{
 A list including the following components:
 \item{row}{Vector containing the sum of squares of every row}
 \item{col}{Vector containing the sum of squares of every column}
 \item{mr}{Vector containing the mean of every row}
 \item{mc}{Vector containing the mean of every column}
 \item{minc}{Vector containing the minimum of every column}
 \item{maxc}{Vector containing the maximum of every for column}
 \item{valueMinr}{Vector containing the columns corresponding to the minimum values of every row}
 \item{valueMinc}{Vector containing the rows corresponding to the minimum values of every column}
 \item{valueMaxr}{Vector containing the columns corresponding to the maximum values of every row}
 \item{valueMaxc}{Vector containing the rows corresponding to the maximum values of every column}
 \item{ssq}{Sum of squares of the matrix}
 \item{cumsumr}{Matrix containing the cumulative sums of every row}
 \item{cumsumc}{Matrix containing the cumulative sums of every column}
} 
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
X <- matrix(rnorm(6*3),ncol=3)
summary <- SUM(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}