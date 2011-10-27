\name{DimSelector} 
\alias{DimSelector}
\title{Convex Hull procedure}
\description{
 Selects among three-mode principal component models of different complexities.
} 
\usage{
 DimSelector(out, n, m, p, model)
} 
\arguments{
 \item{out}{Matrix with columns: number of components for the \code{A}-mode, number of components for the \code{B}-mode, number of components for the \code{C}-mode, , goodness of fit (\%), total number of components}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{model}{Kind of model (1 for Candecomp/Parafac, 2 for Tucke3, 3 for Tucker2, 4 for Tucker1}
}
\references{ E. Ceulemans and H.A.L. Kiers (2006). Selecting among three-mode principal component models of different types and complexities: A numerical convex hull based method. \emph{British Journal of Mathematical and Statistical Psychology 59:133--150}. 
\cr J. Weesie and H. Van Houwelingen (1983). \emph{GEPCAM users' manual (first draft)}. Utrecht, The Netherlands: Institute of Mathematical Statistics, State University of Utrecht.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{LineCon}}, \code{\link{T3runsApproxFit}} \code{\link{T2runsApproxFit}} \code{\link{T1runsFit}} \code{\link{CPrunsFit}}}
\examples{
data(Bus)
# Analysis on T3 with different numbers of components (from 1 to 4 for the A-mode,
# from 1 to 3 for the B-mode, from 1 to 5 for the C-mode)
FitT3 <- T3runsApproxFit(Bus,7,5,37,4,4,4)
T3opt <- DimSelector(FitT3,7,5,37,2)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}