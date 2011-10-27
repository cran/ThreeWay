\name{varimcoco} 
\alias{varimcoco}
\title{Varimax Rotation for Tucker3 and Tucker2}
\description{
 Performs varimax rotation of the core and component matrix rotations to simple structure.
} 
\usage{
varimcoco(A, B, C, H, wa_rel, wb_rel, wc_rel, rot1, rot2, rot3, nanal)
}
\arguments{
 \item{A}{Columnwise orthomornal component matrix for the \code{A}-mode}
 \item{B}{Columnwise orthomornal component matrix for the \code{B}-mode}
 \item{C}{Columnwise orthomornal component matrix for the \code{C}-mode}
 \item{H}{Matricized core array (frontal slices)}
 \item{wa_rel}{relative weight (>=0) for the simplicity of \code{A}}
 \item{wb_rel}{relative weight (>=0) for the simplicity of \code{B}}
 \item{wc_rel}{relative weight (>=0) for the simplicity of \code{C}}
 \item{rot1}{binary indicator (1 if the \code{A}-mode is rotated, 0 otherwise, default 1)}
 \item{rot2}{binary indicator (1 if the \code{B}-mode is rotated, 0 otherwise, default 1)}
 \item{rot3}{binary indicator (1 if the \code{C}-mode is rotated, 0 otherwise, default 1)}
 \item{nanal}{Number of random starts, default 5}
} 
\value{
 A list including the following components:
 \item{AS}{Rotated component matrix for the \code{A}-mode}
 \item{BT}{Rotated component matrix for the \code{B}-mode}
 \item{CU}{Rotated component matrix for the \code{C}-mode}
 \item{K}{Rotated matricized core array (frontal slices)}
 \item{S}{Rotation matrix for the \code{A}-mode} 
 \item{T}{Rotation matrix for the \code{B}-mode} 
 \item{U}{Rotation matrix for the \code{C}-mode} 
 \item{f}{Best solution for three-way orthomax function value} 
 \item{f1}{Varimax value of \code{H}}
 \item{f2a}{Varimax value of \code{AS}} 
 \item{f2b}{Varimax value of \code{BT}}
 \item{f2c}{Varimax value of \code{CU}}
 \item{func}{Function values upon convergence for all the runs of the orthomax algorithm}
} 
\note{The simplicity values \code{f1}, \code{f2a}, \code{f2b}, \code{f2c} are based on \sQuote{natural} weigths and therefore comparable across matrices. When multiplied by the relative weights, they give the contribution to the overall simplicity value (they are \code{I^2/p}, \code{J^2/q} or \code{K^2/r}, respectively, times the sum of the variances of squared values)} 
\references{H.A.L. Kiers (1998). Joint orthomax rotation of the core and component matrices resulting from three-mode principal components analysis. \emph{Journal of Classification  15:245--263}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{orthmax2}}, \code{\link{varim}}} 
\examples{
data(Bus)
# T3 solution
BusT3 <- T3funcrep(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
# Simplicity of A (with weight = 2.5), B (with weight = 2) and C (with weight = 1.5)
T3vmABC <- varimcoco(BusT3$A, BusT3$B, BusT3$C, BusT3$H, 2.5, 2, 1.5)
# Simplicity of only A (with weight = 2.5) and B (with weight = 2)
# rot3=0; the value of wc_rel (= 0) does not play an active role
T3vmAB <- varimcoco(BusT3$A, BusT3$B, BusT3$C, BusT3$H, 2.5, 2, 0, 1, 1, 0)
# simplicity repeatedly with different relative weights for A, B and C
T3vm <- list()
weight.a <- c(1, 3, 6)
weight.b <- c(0, 2, 5)
weight.c <- c(1, 4)
i <- 1
for (wa_rel in weight.a){
 for (wb_rel in weight.b){
  for (wc_rel in weight.c){
   T3vm[[i]] <- varimcoco(BusT3$A, BusT3$B, BusT3$C, 
    BusT3$H, wa_rel, wb_rel, wc_rel)
   i <- i+1
  }
 }
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
