\name{T3fitpartitioning} 
\alias{T3fitpartitioning}
\title{Fit of each entity per mode}
\description{
 Computation of fit contributions by combinations of modes in case of \sQuote{renormalization}.
} 
\usage{
T3fitpartitioning(Xprep, n, m, p, AS, BT, CU, K, renormmode, laba, labb, labc)
}
\arguments{
 \item{Xprep}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{AS}{Component matrix for the \code{A}-mode}
 \item{BT}{Component matrix for the \code{B}-mode}
 \item{CU}{Component matrix for the \code{C}-mode}
 \item{K}{Matricized core array (frontal slices)}
 \item{renormmode}{Renormalization option (0 for no renormalization, 1 for fit contribution to total fit of each \code{B}- and \code{C}-mode component combination, 2 for fit contribution to total fit of each \code{A}- and \code{C}-mode component combination, 3 for fit contribution to total fit of each \code{A}- and \code{B}-mode component combination)}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}  
\value{
 A list including the following components:
 \item{fitA}{Fit contribution for the \code{A}-mode entities}
 \item{fitB}{Fit contribution for the \code{B}-mode entities}
 \item{fitC}{Fit contribution for the \code{C}-mode entities}
 \item{ABcontr}{Contribution to the goodness of fit contributions by combinations of \code{A}- and \code{B}-modes in case of \sQuote{renormalization}}
 \item{BCcontr}{Contribution to the goodness of fit contributions by combinations of \code{B}- and \code{C}-modes in case of \sQuote{renormalization}}
 \item{ACcontr}{Contribution to the goodness of fit contributions by combinations of \code{A}- and \code{C}-modes in case of \sQuote{renormalization}}
}
\note{
The computation of the fit contributions by combinations of modes is done in case of \sQuote{renormalization}.
\cr In Tucker1, \code{renormmode} must be equal to 0.} 
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{T3}}, \code{\link{T2}}, \code{\link{T1}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
# T3 solution
BusT3 <- T3funcrep(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
# Fitpartitioning of the T3 solution
FitT3 <- T3fitpartitioning(Bus, 7, 5, 37, BusT3$A, BusT3$B, BusT3$C, BusT3$H, 0, 
 laba, labb, labc)
# Fitpartitioning of the T3 solution (when labels are not available)
FitT3 <- T3fitpartitioning(Bus, 7, 5, 37, BusT3$A, BusT3$B, BusT3$C, BusT3$H, 0)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}