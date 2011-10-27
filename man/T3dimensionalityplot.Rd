\name{T3dimensionalityplot} 
\alias{T3dimensionalityplot}
\title{Plot fit of Tucker3}
\description{
 Plots fits against numbers of dimensions, with \code{PQR} as labels and fits against number of effective paramaters.
}
\usage{T3dimensionalityplot(A, n, m, p)}
\arguments{
  \item{A}{Matrix with columns: number of components for the \code{A}-mode, number of components for the \code{B}-mode, number of components for the \code{C}-mode, goodness of fit (\%), total number of components}
  \item{n}{Number of \code{A}-mode entities}
  \item{m}{Number of \code{B}-mode entities}
  \item{p}{Number of \code{C}-mode entities}
}
\note{
 \code{A} is usually the output of \code{\link{DimSelector}}.
 \cr The number of effective parameters  in a Candecomp/Parafac analysis is discussed in Weesie and Van Houwelingen (1983).
}
\references{ E. Ceulemans and H.A.L. Kiers (2006). Selecting among three-mode principal component models of different types and complexities: A numerical convex hull based method. \emph{British Journal of Mathematical and Statistical Psychology 59:133--150}. 
\cr J. Weesie and H. Van Houwelingen (1983). \emph{GEPCAM users' manual (first draft)}. Utrecht, The Netherlands: Institute of Mathematical Statistics, State University of Utrecht.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{T3}}, \code{\link{DimSelector}}}
\examples{
data(Bus)
# Fit values of T3 with different numbers of components (from 1 to 4 for the A-mode, 
# from 1 to 3 for the B-mode, from 1 to 5 for the C-mode)
FitT3 <- T3runsApproxFit(Bus,7,5,37,4,3,5)
T3dimensionalityplot(FitT3,7,5,37)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}