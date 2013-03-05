\name{T1} 
\alias{T1}
\title{Interactive Tucker1 analysis}
\description{
 Detects the underlying structure of a three-way array according to the Tucker1 (T1) model.
} 
\usage{ 
 T1(dati, laba, labb, labc)
}
 \arguments{
 \item{dati}{Array of order \code{n} by \code{m} by \code{p} or matrix or data.frame of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
  }
\value{
 A list including the following components:
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{core}{Matricized core array (frontal slices)}
 \item{fit}{Fit value expressed as a percentage} 
 \item{fitA}{Fit contributions for the \code{A}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitB}{Fit contributions for the \code{B}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitC}{Fit contributions for the \code{C}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{laba}{Vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Vector of length \code{P} containing the labels of the \code{C}-mode entities}
 \item{Xprep}{Matrix of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices) after preprocessing used for the analysis}
} 
\references{L.R Tucker (1966). Some mathematical notes on three-mode factor analysis. \emph{Psychometrika 31:279--311}.
\cr P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{CP}},\code{\link{T3}},\code{\link{T2}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5],1,1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)],3,8)
\dontrun{
# interactive T1 analysis
BusT1 <- T1(Bus, laba, labb, labc)
# interactive T1 analysis (when labels are not available)
BusT1 <- T1(Bus)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}