\name{T3runsApproxFit} 
\alias{T3runsApproxFit}
\title{Approximated Tucker3 solutions}
\description{
 Computes all the approximated Tcker3 solutions using PCASup results with \code{r1} (from 1 to \code{maxa}), \code{r2} (from 1 to \code{maxb}) and \code{r3} (from 1 to \code{maxc}) components.
}
\usage{T3runsApproxFit(X, n, m, p, maxa, maxb, maxc)}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{maxa}{Maximum dimensionality for the \code{A}-mode}
 \item{maxb}{Maximum dimensionality for the \code{B}-mode}
 \item{maxc}{Maximum dimensionality for the \code{C}-mode}
}
\value{
 \item{out}{Matrix with columns: number of components for the \code{A}-mode, number of components for the \code{B}-mode, number of components for the \code{C}-mode, goodness of fit (\%), total number of components}
} 
\note{
 Cumulative sum of eigenvalues and fits from PCAsup applied to the \code{A}-, \code{B}- and \code{C}-modes are automatically printed.
} 
\references{H.A.L. Kiers (1991). Hierarchical relations among three-way methods. \emph{Psychometrika 56:449--470}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{DimSelector}}, \code{\link{LineCon}}, \code{\link{pcasup3}}, \code{\link{T3}}}
\examples{
data(Bus)
# Fit values of T3 with different numbers of components (from 1 to 4 for the A-mode, 
# from 1 to 3 for the B-mode, from 1 to 5 for the C-mode)
FitT3 <- T3runsApproxFit(Bus, 7, 5, 37, 4, 3, 5)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
