\name{jointplotgen} 
\alias{jointplotgen}
\title{Jointplots}
\description{
 Program for producing jointplots in general.
}
\usage{
 jointplotgen(K, A, B, C, fixmode, fixunit, laba, labb, labc)
}
\arguments{
 \item{K}{Matricized core array (frontal slices)}
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{fixmode}{Mode for which one unit is to be chosen (1 for A-mode, 2 for B-mode, 3 for C-mode)}
 \item{fixunit}{Number of component for which joint plot is desired}
 \item{laba}{Vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 \item{fit}{Percentage of info for component at hand, explained by two-dimensional plot}
}
\references{P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
# <- T3 solution
BusT3 <- T3funcrep(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
# Joint plot for mode C and component 2
jointplotgen(BusT3$H, BusT3$A, BusT3$B, BusT3$C, 3, 2, laba, labb, labc)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}