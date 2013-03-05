\name{T3} 
\alias{T3}
\title{Interactive Tucker3 analysis}
\description{
 Detects the underlying structure of a three-way array according to the Tucker3 (T3) model.
} 
\usage{ 
 T3(data, laba, labb, labc)
}
 \arguments{
 \item{data}{Array of order \code{n} \code{x} \code{m} \code{x} \code{p} or matrix or data.frame of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
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
 \item{fitValues}{Fit values expressed as a percentage upon convergence for all the runs of the CP algorithm (see \code{\link{T3func}})}
 \item{funcValues}{Function values upon convergence for all the runs of the CP algorithm (see \code{\link{T3func}})}
 \item{cputime}{Computation times for all the runs of the CP algorithm (see \code{\link{T3func}})}
 \item{iter}{Numbers of iterations upon convergence for all the runs of the CP algorithm (see \code{\link{T3func}})}
 \item{fitA}{Fit contributions for the \code{A}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitB}{Fit contributions for the \code{B}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitC}{Fit contributions for the \code{C}-mode entities (see \code{\link{T3fitpartitioning}})}
 \item{fitAB}{Fit contributions for the \code{A}-and mode \code{B} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{fitAC}{Fit contributions for the \code{A}-and mode \code{C} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{fitBC}{Fit contributions for the \code{B}-and mode \code{C} component combinations (see \code{\link{T3fitpartitioning}})}
 \item{Bint}{Bootstrap percentile interval of every element of \code{B} (see \code{\link{bootstrapT3}})}
 \item{Cint}{Bootstrap percentile interval of every element of \code{C} (see \code{\link{bootstrapT3}})}
 \item{Kint}{Bootstrap percentile interval of every element of \code{core} (see \code{\link{bootstrapT3}})}
 \item{fpint}{Bootstrap percentile interval for the goodness of fit index expressed as a percentage (see \code{\link{bootstrapT3}})}
 \item{Afull}{Component matrix for the \code{A}-mode (full data) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{As1}{Component matrix for the \code{A}-mode (split n.1) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{As2}{Component matrix for the \code{A}-mode (split n.2) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Bfull}{Component matrix for the \code{B}-mode (full data) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Bs1}{Component matrix for the \code{B}-mode (split n.1) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Bs2}{Component matrix for the \code{B}-mode (split n.2) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Cfull}{Component matrix for the \code{C}-mode (full data) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Cs1}{Component matrix for the \code{C}-mode (split n.1) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Cs2}{Component matrix for the \code{C}-mode (split n.2) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Kfull}{Matricized core array (frontal slices) (full data) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Ks1}{Matricized core array (frontal slices) (split n.1) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Ks2}{Matricized core array (frontal slices) (split n.2) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Kss1}{Matricized core array (frontal slices) (using full data solutions for A,B and C for split n.1) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Kss2}{Matricized core array (frontal slices) (using full data solutions for A,B and C for split n.2) from split-half analysis (see \code{\link{splithalfT3}})}
 \item{Aplot}{Coordinates for plots of the \code{A}-mode entities}
 \item{Bplot}{Coordinates for plots of the \code{B}-mode entities}
 \item{Cplot}{Coordinates for plots of the \code{C}-mode entities}
 \item{CBplot}{Coordinates for plots of the \code{C} and \code{B}-mode entities using the \code{A}-mode projected in it as axes (to be added in \code{plot}, i.e. coordinates in (\code{$CBplot},\code{$A}))}
 \item{ACplot}{Coordinates for plots of the \code{A} and \code{C}-mode entities using the \code{B}-mode projected in it as axes (to be added in \code{plot}, i.e. coordinates in (\code{$ACplot},\code{$B}))}
 \item{BAplot}{Coordinates for plots of the \code{B} and \code{A}-mode entities using the \code{C}-mode projected in it as axes (to be added in \code{plot}, i.e. coordinates in (\code{$BAplot},\code{$C}))}
 \item{A1}{Component matrix for the \code{A}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{B1}{Component matrix for the \code{B}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{C1}{Component matrix for the \code{C}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{A2}{Component matrix for the \code{A}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{B2}{Component matrix for the \code{B}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{C2}{Component matrix for the \code{C}-mode from Principal Component Analysis of mean values (see \code{\link{pcamean}})}
 \item{laba}{Vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Vector of length \code{P} containing the labels of the \code{C}-mode entities}
 \item{Xprep}{Matrix of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices) after preprocessing used for the analysis}
} 
\references{L.R Tucker (1966). Some mathematical notes on three-mode factor analysis. \emph{Psychometrika 31:279--311}.
\cr P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{CP}},\code{\link{T2}},\code{\link{T1}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5],1,1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)],3,8)
\dontrun{
# interactive T3 analysis
BusT3 <- T3(Bus, laba, labb, labc)
# interactive T3 analysis (when labels are not available)
BusT3 <- T3(Bus)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}