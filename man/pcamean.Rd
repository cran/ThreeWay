\name{pcamean} 
\alias{pcamean}
\title{PCA of the mean matrix}
\description{
 Performs Principal Component Analysis (PCA) of the mean matrix aggregated over mode number indicated by \code{aggregmode}.
}
\usage{pcamean(X, n, m, p, laba, labb, labc)}			
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 A list including the following components:
 \item{Y}{An object of class \code{matrix} containing the mean matrix}
 \item{ev}{A vector containing the eigenvalues of \code{Y}}
 \item{A1}{Component matrix for the \code{A} mode based on varimax rotation of loadings}
 \item{B1}{Component matrix for the \code{B} mode based on varimax rotation of loadings}
 \item{C1}{Component matrix for the \code{C} mode based on varimax rotation of loadings}
 \item{A2}{Component matrix for the \code{A} mode based on oblique \sQuote{HKIC} (Harris-Kaiser Independent Cluster) orthomax rotation of loadings}
 \item{B2}{Component matrix for the \code{B} mode based on oblique \sQuote{HKIC} (Harris-Kaiser Independent Cluster) orthomax rotation of loadings}
 \item{C2}{Component matrix for the \code{C} mode based on oblique \sQuote{HKIC} (Harris-Kaiser Independent Cluster) orthomax rotation of loadings}
} 
\note{
\code{aggregmode} denotes the mode over which means are computed (1 for \code{A}-mode, 2 for \code{B}-mode, 3 for \code{C}-mode).
\cr \code{aggregmode} is provided interactively. 
} 
\references{H. Kaiser (1958). The varimax criterion for analytic rotation in factor analysis. \emph{Psychometrika 23:187--200}. 
\cr C. Harris and H. Kaiser (1964). Some mathematical notes on three-mode factor analysis. \emph{Psychometrika 29:347--362}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(TV)
TVdata=TV[[1]]
labSCALE=TV[[2]]
labPROGRAM=TV[[3]]
labSTUDENT=TV[[4]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
\dontrun{
# PCA on the mean matrix
TVpcamean <- pcamean(TVdata, 30, 16, 15, labSTUDENT, labSCALE, labPROGRAM)
# PCA on the mean matrix (when labels are not available)
TVpcamean <- pcamean(TVdata, 30, 16, 15)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}