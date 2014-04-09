\name{CPfitpartitioning} 
\alias{CPfitpartitioning}
\title{Fit of each entity per mode}
\description{
 Computation of fit contributions.
} 
\usage{
 CPfitpartitioning(Xprep, n, m, p, A, B, C, laba, labb, labc)
}
\arguments{
 \item{Xprep}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}  
\value{
 A list including the following components:
 \item{fitA}{Fit contribution for the \code{A}-mode entities}
 \item{fitB}{Fit contribution for the \code{B}-mode entities}
 \item{fitC}{Fit contribution for the \code{C}-mode entities}
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{CP}}}
\examples{
data(TV)
TVdata=TV[[1]]
labSCALE=TV[[2]]
labPROGRAM=TV[[3]]
labSTUDENT=TV[[4]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# CP solution
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 0, 1e-6, 10000)
# Fitpartitioning of the CP solution
FitCP <-  CPfitpartitioning(TVdata, 30, 16, 15, TVcp$A, TVcp$B, TVcp$C, 
 labSTUDENT, labSCALE, labPROGRAM)
# Fitpartitioning of the CP solution (when labels are not available)
FitCP <-  CPfitpartitioning(TVdata, 30, 16, 15, TVcp$A, TVcp$B, TVcp$C)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
