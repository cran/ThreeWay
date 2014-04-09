\name{CPdimensionalityplot} 
\alias{CPdimensionalityplot}
\title{Plot fit of Candecomp/Parafac}
\description{
 Plots fits against numbers of dimensions, with \code{S} as labels and fits against number of effective paramaters.
}
\usage{CPdimensionalityplot(A, n, m, p)}
\arguments{
  \item{A}{A matrix with columns: number of components, goodness of fit (\%)}
  \item{n}{Number of \code{A}-mode entities}
  \item{m}{Number of \code{B}-mode entities}
  \item{p}{Number of \code{C}-mode entities}
}
\note{
 \code{A} is usually the first and fourth columns of the output of \code{\link{DimSelector}}.
 \cr The number of effective parameters  in a Candecomp/Parafac analysis is discussed in Weesie and Van Houwelingen (1983).
}
\references{E. Ceulemans \& H.A.L. Kiers (2006). Selecting among three-mode principal component models of different types and complexities: A numerical convex hull based method. \emph{British Journal of Mathematical and Statistical Psychology 59:133--150}. 
\cr J. Weesie \& H. Van Houwelingen (1983). \emph{GEPCAM users' manual (first draft)}. Utrecht, The Netherlands: Institute of Mathematical Statistics, State University of Utrecht.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{CP}}, \code{\link{DimSelector}}}
\examples{
data(TV)
TVdata=TV[[1]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# Fit values of CP with different numbers of components (from 1 to 5)
FitCP <- CPrunsFit(TVdata, 30, 16, 15, 5)
OutCP <- FitCP[,c(1,4)]
CPdimensionalityplot(OutCP, 30, 16, 15)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
