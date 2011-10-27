\name{T2} 
\alias{T2}
\title{Interactive Tucker2 analysis}
\description{
 Detects the underlying structure of a three-way array according to the Tucker2 (T2) model.
} 
\usage{ 
 T2(dati, laba, labb, labc)
}
 \arguments{
 \item{dati}{Array of order \code{n x m x p} or matrix or data.frame of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
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
 \item{fitValues}{Fit values expressed as a percentage upon convergence for all the runs of the CP algorithm (see \code{\link{T2func}})}
 \item{funcValues}{Function values upon convergence for all the runs of the CP algorithm (see \code{\link{T2func}})}
 \item{cputime}{Computation times for all the runs of the CP algorithm (see \code{\link{T2func}})}
 \item{iter}{Numbers of iterations upon convergence for all the runs of the CP algorithm (see \code{\link{T2func}})}
 \item{fitA}{Fit contributions for the \code{A}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitB}{Fit contributions for the \code{B}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitC}{Fit contributions for the \code{C}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitAB}{Fit contributions for the \code{A}-and mode \code{B} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{fitAC}{Fit contributions for the \code{A}-and mode \code{C} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{fitBC}{Fit contributions for the \code{B}-and mode \code{C} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{laba}{Vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Vector of length \code{P} containing the labels of the \code{C}-mode entities}
 \item{Xprep}{Matrix of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices) after preprocessing used for the analysis}
} 
\references{L.R Tucker (1966). Some mathematical notes on three-mode factor analysis. \emph{Psychometrika 31:279--311}.
\cr P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{CP}},\code{\link{T3}},\code{\link{T1}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
\dontrun{
# interactive T2 analysis
BusT2 <- T2(Bus, laba, labb, labc)
# interactive T2 analysis (when labels are not available)
BusT2 <- T2(Bus)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}