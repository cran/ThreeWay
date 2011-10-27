\name{splithalfT3} 
\alias{splithalfT3}
\title{Split-Half Analysis}
\description{
 Performs split-half analysis for Tucker3.
}
\usage{
 splithalfT3(X, n, m, p, r1, r2, r3, centopt, normopt, renormmode, 
  wa_rel, wb_rel, wc_rel, addanal, conv, laba, labb, labc)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{r1}{Number of extracted components for the \code{A}-mode}
 \item{r2}{Number of extracted components for the \code{B}-mode}
 \item{r3}{Number of extracted components for the \code{C}-mode}
 \item{centopt}{Centering option (see \code{\link{cent3}}) }
 \item{normopt}{Normalization option (see \code{\link{norm3}})}
 \item{renormmode}{Renormalization option (see \code{\link{renormsolT3}})}
 \item{wa_rel}{Relative weight for simplicity of \code{A}-mode}
 \item{wb_rel}{Relative weight for simplicity of \code{B}-mode}
 \item{wc_rel}{Relative weight for simplicity of \code{C}-mode}
 \item{addanal}{Number of additional runs}
 \item{conv}{Convergence criterion}
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
 \item{Kfull}{Matricized core array (frontal slices) (full data)}
 \item{Ks1}{Matricized core array (frontal slices) (split n.1)}
 \item{Ks2}{Matricized core array (frontal slices) (split n.2)}
 \item{Kss1}{Matricized core array (frontal slices) (using full data solutions for A,B and C for split n.1)}
 \item{Kss2}{Matricized core array (frontal slices) (using full data solutions for A,B and C for split n.2)}
}
\references{P.M. Kroonenberg (2008). \emph{Applied Multiway Data Analysis}. Wiley, New Jersey.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{T3}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5],1,1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)],3,8)
\dontrun{
# Split-half analysis on T3 solution
splitT3 <- splithalfT3(Bus, 7, 5, 37, 2, 2, 2, 0, 0, 0, 3, 3, 0, 5, 1e-6, 
 laba, labb, labc)
# Split-half analysis on T3 solution (when labels are not available)
splitT3 <- splithalfT3(Bus, 7, 5, 37, 2, 2, 2, 0, 0, 0, 3, 3, 0, 5, 1e-6)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}