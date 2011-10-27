\name{CPrunsFit} 
\alias{CPrunsFit}
\title{Candecomp/Parafac solutions}
\description{
 Computes all the Candecomp/Parafac solutions (CP) with \code{r} (from 1 to \code{maxC}) components.
}
\usage{
	CPrunsFit(X, n, m, p, maxC)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{maxC}{Maximum dimensionality for the \code{A}-mode}
 }

\value{
 \item{out}{Matrix with columns: number of components for the \code{A}-mode, number of components for the \code{B}-mode, number of components for the \code{C}-mode, goodness of fit (\%), total number of components
 }
}

 \note{
 The structure of \code{out} is consistent with Tucker models. In CP, the first and forth columns are sufficient for choosing the optimal number of components.
}

\references{H.A.L. Kiers (1991). Hierarchical relations among three-way methods. \emph{Psychometrika 56:449--470}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{DimSelector}}, \code{\link{LineCon}}, \code{\link{CP}}}
\examples{
data(TV)
TVdata=TV[[1]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# Fit values of CP with different numbers of components (from 1 to 5)
FitCP <- CPrunsFit(TVdata, 30, 16, 15, 5)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}