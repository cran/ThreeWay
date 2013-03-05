\name{percentile95} 
\alias{percentile95}
\title{95\% percentile intervals}
\description{
 Computes 2.5\% and 97.5\% percentiles for all columns of \code{X}.
}
\usage{percentile95(X)} 
\arguments{
  \item{X}{Matrix}
}
\value{
 A list including the following components:
 \item{lo}{Vector of the 2.5\% percentiles of the values in the columns of \code{X}}
 \item{up}{Vector of the 97.5\% percentiles of the values in the columns of \code{X}}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{bootstrapCP}},\code{\link{bootstrapT3}}} 
\examples{
X <- matrix(rnorm(50*3),ncol=3)
perc95X <- percentile95(X)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
