\name{pcasup3} 
\alias{pcasup3}
\title{PCASup Analysis}
\description{
 Computes PCASup analysis in all the three directions.
}
\usage{
 pcasup3(X, n, m, p)
} 
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
}
\value{
 A list including the following components:
 \item{A}{Matrix of the eingenvectors of the supermatrix containing the frontal slices of the array (\code{A}-mode)}
 \item{B}{Matrix of the eingenvectors of the supermatrix containing the horizontal slices of the array (\code{B}-mode)}
 \item{C}{Matrix of the eingenvectors of the supermatrix containing the lateral slices of the array (\code{C}-mode)}
 \item{la}{Vector of the eigenvalues of the supermatrix containing the frontal slices of the array (\code{A}-mode)}
 \item{lb}{Vector of the eigenvalues of the supermatrix containing the horizontal slices of the array (\code{B}-mode)}
 \item{lc}{Vector of the eigenvalues of the supermatrix containing the lateral slices of the array (\code{C}-mode)}
} 
\note{
\code{pcasup3} computes the Tucker3 solution according to Tucker (1966).
\cr Cumulative sum of eigenvalues and fits from PCAsup applied to the \code{A}-, \code{B}- and \code{C}-modes are automatically printed.
} 
\references{H.A.L. Kiers (1991). Hierarchical relations among three-way methods. \emph{Psychometrika 56: 449--470}.
\cr H.A.L. Kiers (2000). Towards a standardized notation and terminology in multiway analysis. \emph{Journal of Chemometrics 14:105--122}.
\cr L.R Tucker (1966). Some mathematical notes on three-mode factor analysis. \emph{Psychometrika 31: 279--311}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{T3}}} 
\examples{
data(Bus)
\dontrun{
# PCA-sup
pcasupBus <- pcasup3(Bus, 7, 5, 37)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}