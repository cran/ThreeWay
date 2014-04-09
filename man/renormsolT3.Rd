\name{renormsolT3} 
\alias{renormsolT3}
\title{Renormalization of the Tucker3 (and Tucker2) solution}
\description{
 Renormalizes the Tucker3 solution producing a core normalized to unit sum of squares (and compensating the core normalization in the component matrices).
}
\usage{
 renormsolT3(A, B, C, G, mode)
} 
\arguments{
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{G}{Matricized core array (frontal slices)}
 \item{mode}{Renormalization option (1 if renormalization with respect to \code{A}-mode, 2 if renormalization with respect to \code{B}-mode, 3 if renormalization with respect to \code{C}-mode)}
}
\value{
 A list including the following components:
 \item{A}{Component matrix for the \code{A}-mode after normalization of the core}
 \item{B}{Component matrix for the \code{B}-mode after normalization of the core}
 \item{C}{Component matrix for the \code{C}-mode after normalization of the core}
 \item{H}{Normalized matricized core array (frontal slices)}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
# T3 solution
BusT3 <- T3funcrep(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
# sums of squares of A and core
sum(BusT3$A^2)
sum(BusT3$H^2)
# Renormalization with respect to the A-mode
BusT3rA <- renormsolT3(BusT3$A, BusT3$B, BusT3$C, BusT3$H,1)
# sums of squares of A and core after renormalization
sum(BusT3rA$A^2)
sum(BusT3rA$H^2)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}