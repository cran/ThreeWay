\name{T2runsApproxFit} 
\alias{T2runsApproxFit}
\title{Approximated Tucker2 solutions}
\description{
 Computes all the approximated Tucker2 solutions using PCASup results with \code{r1} (from 1 to \code{maxa}, if \code{A}-mode reduced), \code{r2} (from 1 to \code{maxb}, if \code{B}-mode reduced) and \code{r3} (from 1 to \code{maxc}, if \code{C}-mode reduced) components.
}
\usage{T2runsApproxFit(X, n, m, p, maxa, maxb, maxc, model)}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{maxa}{Maximum dimensionality for the \code{A}-mode}
 \item{maxb}{Maximum dimensionality for the \code{B}-mode}
 \item{maxc}{Maximum dimensionality for the \code{C}-mode}
 \item{model}{Tucker2 model choice (1 for T2-AB, 2 for T2-AC, 3 for T2-BC)}
}
\value{
 \item{out}{Matrix with columns: number of components for the \code{A}-mode, number of components for the \code{B}-mode, number of components for the \code{C}-mode, goodness of fit (\%), total number of components
 }
}
\note{
 Cumulative sum of eigenvalues and fits from PCAsup applied to the reduced modes are automatically printed.
} 
\references{H.A.L. Kiers (1991). Hierarchical relations among three-way methods. \emph{Psychometrika 56:449--470}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{DimSelector}}, \code{\link{LineCon}}, \code{\link{pcasup2}}, \code{\link{T2}}}
\examples{
data(Bus)
# Fit values of T2-AB with different numbers of components 
# (from 1 to 3 for the B-mode, from 1 to 5 for the C-mode)
FitT2 <- T2runsApproxFit(Bus, 7, 5, 37, 7, 3, 5, 3)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
