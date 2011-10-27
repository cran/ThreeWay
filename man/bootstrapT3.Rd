\name{bootstrapT3} 
\alias{bootstrapT3}
\title{Bootstrap percentile intervals for Tucker3}
\description{
 Produces percentile intervals for all output parameters. The percentile intervals indicate the instability of the sample solutions.
 } 
\usage{
 bootstrapT3(X, A, B, C, G, n, m, p, r1, r2, r3, conv, centopt, normopt, 
  optimalmatch, laba, labb, labc)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{G}{Matricized core array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities of \code{X}}
 \item{m}{Number of \code{B}-mode entities of \code{X}}
 \item{p}{Number of \code{C}-mode entities of \code{X}}
 \item{r1}{Number of extracted components for the \code{A}-mode}
 \item{r2}{Number of extracted components for the \code{B}-mode}
 \item{r3}{Number of extracted components for the \code{C}-mode}
 \item{conv}{Convergence criterion}
 \item{centopt}{Centering option (see \code{\link{cent3}})}
 \item{normopt}{Normalization option (see \code{\link{norm3}})}
 \item{optimalmatch}{Binary indicator (0 if the procedure uses matching via orthogonal rotation towards full solutions, 1 if the procedure uses matching via optimal transformation towards full solutions)}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 A list including the following components:
 \item{Bint}{Bootstrap percentile interval of every element of \code{B}}
 \item{Cint}{Bootstrap percentile interval of every element of \code{C}}
 \item{Gint}{Bootstrap percentile interval of matricized core array (frontal slices) \code{G}}
 \item{fpint}{Bootstrap percentile interval for the goodness of fit index expressed as a percentage}
} 
\note{
 The preprocessing must be done in same way as for sample analysis. 
 \cr The resampling mode must be the \code{A}-mode. 
 \cr The starting points for every bootstrap solution are two: rational (using SVD) and solution from the observed sample.
}
\references{H.A.L. Kiers (2004). Bootstrap confidence intervals for three-way methods. \emph{Journal of Chemometrics 18:22--36}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{bootstrapCP}}, \code{\link{percentile95}}, \code{\link{T3}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5],1,1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)],3,8)
# T3 solution
BusT3 <- T3funcrep(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
\dontrun{
# Bootstrap analysis on T3 solution using matching via optimal transformation
boot <- bootstrapT3(Bus, BusT3$A, BusT3$B, BusT3$C, BusT3$H, 7, 5, 37, 2, 2, 2, 
 1e-6, 0, 0, 1, laba, labb, labc)
# Bootstrap analysis on T3 solution using matching via orthogonal rotation 
# (when labels are not available)
boot <- bootstrapT3(Bus, BusT3$A, BusT3$B, BusT3$C, BusT3$H, 7, 5, 37, 2, 2, 2, 
 1e-6, 0, 0, 0)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}