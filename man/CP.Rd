\name{CP} 
\alias{CP}
\title{Interactive Candecomp/Parafac analysis}
\description{
  Detects the underlying structure of a three-way array according to the Candecomp/Parafac (CP) model.
} 
\usage{
 CP(data,laba,labb,labc)
}
\arguments{
 \item{data}{Array of order \code{n} by \code{m} by \code{p} or matrix or data.frame of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 A list including the following components:
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{fit}{Fit value expressed as a percentage} 
 \item{tripcos}{Matrix of the triple cosines among pairs of components (to inspect degeneracy)}
 \item{fitValues}{Fit values expressed as a percentage upon convergence for all the runs of the CP algorithm (see \code{\link{CPfunc}})}
 \item{funcValues}{Function values upon convergence for all the runs of the CP algorithm (see \code{\link{CPfunc}})}
 \item{cputime}{Computation times for all the runs of the CP algorithm (see \code{\link{CPfunc}})}
 \item{iter}{Numbers of iterations upon convergence for all the runs of the CP algorithm (see \code{\link{CPfunc}})}
 \item{fitA}{Fit contributions for the \code{A}-mode entities (see \code{\link{CPfitpartitioning}})}
 \item{fitB}{Fit contributions for the \code{B}-mode entities (see \code{\link{CPfitpartitioning}})}
 \item{fitC}{Fit contributions for the \code{C}-mode entities (see \code{\link{CPfitpartitioning}})}
 \item{Bint}{Bootstrap percentile interval of every element of \code{B} (see \code{\link{bootstrapCP}})}
 \item{Cint}{Bootstrap percentile interval of every element of \code{C} (see \code{\link{bootstrapCP}})}
 \item{fpint}{Bootstrap percentile interval for the goodness of fit index expressed as a percentage (see \code{\link{bootstrapCP}})}
 \item{Afull}{Component matrix for the \code{A}-mode (full data) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{As1}{Component matrix for the \code{A}-mode (split n.1) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{As2}{Component matrix for the \code{A}-mode (split n.2) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Bfull}{Component matrix for the \code{B}-mode (full data) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Bs1}{Component matrix for the \code{B}-mode (split n.1) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Bs2}{Component matrix for the \code{B}-mode (split n.2) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Cfull}{Component matrix for the \code{C}-mode (full data) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Cs1}{Component matrix for the \code{C}-mode (split n.1) from split-half analysis (see \code{\link{splithalfCP}})}
 \item{Cs2}{Component matrix for the \code{C}-mode (split n.2) from split-half analysis (see \code{\link{splithalfCP}})}
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
\references{J.D. Carroll and J.J. Chang (1970). Analysis of individual differences in multidimensional scaling via an \emph{N}-way generalization of 'Eckart-Young' decomposition. \emph{Psychometrika 35:283--319}. 
\cr P. Giordani, H.A.L. Kiers, M.A. Del Ferraro (2014). Three-way component analysis using the R package ThreeWay. \emph{Journal of Statistical Software 57(7):1--23}. \url{http://www.jstatsoft.org/v57/i07/}.
\cr R.A. Harshman (1970). Foundations of the Parafac procedure: models and conditions for an 'explanatory' multi-mode factor analysis. \emph{UCLA Working Papers in Phonetics 16:1--84}.
\cr P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{T3}}, \code{\link{T2}}, \code{\link{T1}}}
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
# interactive CP analysis
TVcp <- CP(TVdata, labSTUDENT, labSCALE, labPROGRAM)
# interactive CP analysis (when labels are not available)
TVcp <- CP(TVdata)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
