\name{renormsolCP} 
\alias{renormsolCP}
\title{Scaling of the Candecomp/Parafac solution}
\description{
 Scales the Candecomp/Parafac solution producing two component matrices normalized to unit sum of squares (and compensating this scaling in the remaining component matrix).
}		
\usage{
 renormsolCP(A, B, C, mode)
} 
\arguments{
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{mode}{Scaling option (1 if scaling for B- and C-modes, 2 if scaling for A- and C-modes, 3 if scaling for A- and B-modes)}
}
\value{
 A list including the following components:
 \item{A}{Component matrix for the \code{A}-mode after normalization}
 \item{B}{Component matrix for the \code{B}-mode after normalization}
 \item{C}{Component matrix for the \code{C}-mode after normalization}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(TV)
TVdata=TV[[1]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# CP solution
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 0, 1e-6, 10000)
# sums of squares of A, B and C
sum(TVcp$A^2)
sum(TVcp$B^2)
sum(TVcp$C^2)
# Renormalization by scaling B- and C-modes
TVcpScalBC <- renormsolCP(TVcp$A, TVcp$B, TVcp$C, 1)
# sums of squares of A, B and C after renormalization
sum(TVcpScalBC$A^2)
sum(TVcpScalBC$B^2)
sum(TVcpScalBC$C^2)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}