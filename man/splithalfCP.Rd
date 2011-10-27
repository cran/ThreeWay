\name{splithalfCP} 
\alias{splithalfCP}
\title{Split-Half Analysis}
\description{
 Performs split-half analysis for Candecomp/Parafac.
}
\usage{
 splithalfCP(X, n, m, p, r, centopt, normopt, scaleopt, addanal, conv, 
  maxit, ort1, ort2, ort3, laba, labb, labc)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{r}{Number of extracted components}
 \item{centopt}{Centering option (see \code{\link{cent3}})}
 \item{normopt}{Normalization option (see \code{\link{norm3}})}
 \item{scaleopt}{Scaling option (see \code{\link{renormsolCP}})}
 \item{addanal}{Number of additional runs}
 \item{conv}{Convergence criterion}
 \item{maxit}{Maximal number of iterations}
 \item{ort1}{Type of constraints on \code{A} (see \code{\link{CP}})}
 \item{ort2}{Type of constraints on \code{B} (see \code{\link{CP}})}
 \item{ort3}{Type of constraints on \code{C} (see \code{\link{CP}})}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 \item{Afull}{Component matrix for the \code{A}-mode (full data)}
 \item{As1}{Component matrix for the \code{A}-mode (split n.1)}
 \item{As2}{Component matrix for the \code{A}-mode (split n.2)}
 \item{Bfull}{Component matrix for the \code{B}-mode (full data)}
 \item{Bs1}{Component matrix for the \code{B}-mode (split n.1)}
 \item{Bs2}{Component matrix for the \code{B}-mode (split n.2)}
 \item{Cfull}{Component matrix for the \code{C}-mode (full data)}
 \item{Cs1}{Component matrix for the \code{C}-mode (split n.1)}
 \item{Cs2}{Component matrix for the \code{C}-mode (split n.2)}
}
\references{P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{CP}}}
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
# Split-half analysis on CP solution
splitCP <- splithalfCP(TVdata, 30, 16, 15, 2, 0, 0, 0, 5, 1e-6, 10000, 1, 1, 1, 
 labSTUDENT, labSCALE, labPROGRAM)
# Split-half analysis on CP solution (when labels are not available)
splitCP <- splithalfCP(TVdata, 30, 16, 15, 2, 0, 0, 0, 5, 1e-6, 10000, 1, 1, 1)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}