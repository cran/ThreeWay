\name{bootstrapCP}
\alias{bootstrapCP}
\title{Bootstrap percentile intervals for CANDECOMP/PARAFAC}
\description{
 Produces percentile intervals for all output parameters. The percentile intervals indicate the instability of the sample solutions.
} 
\usage{ 
 bootstrapCP(X, A, B, C, n, m, p, r, ort1, ort2, ort3, conv, centopt, normopt, 
  scaleopt, maxit, laba, labb, labc)
}
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{n}{Number of \code{A}-mode entities of \code{X}}
 \item{m}{Number of \code{B}-mode entities of \code{X}}
 \item{p}{Number of \code{C}-mode entities of \code{X}}
 \item{r}{Number of extracted components}
 \item{ort1}{Type of constraints on \code{A} (see \code{\link{CP}})}
 \item{ort2}{Type of constraints on \code{B} (see \code{\link{CP}})}
 \item{ort3}{Type of constraints on \code{C} (see \code{\link{CP}})}
 \item{conv}{Convergence criterion}
 \item{centopt}{Centering option (see \code{\link{cent3}})}
 \item{normopt}{Normalization option (see \code{\link{norm3}})}
 \item{scaleopt}{Scaling option (see \code{\link{renormsolCP}})}
 \item{maxit}{Maximal number of iterations}
 \item{laba}{Optional vector of length \code{n} containing the labels of the \code{A}-mode entities}
 \item{labb}{Optional vector of length \code{m} containing the labels of the \code{B}-mode entities}
 \item{labc}{Optional vector of length \code{p} containing the labels of the \code{C}-mode entities}
}
\value{
 A list including the following components:
 \item{Bint}{Bootstrap percentile interval of every element of \code{B}}
 \item{Cint}{Bootstrap percentile interval of every element of \code{C}}
 \item{fpint}{Bootstrap percentile interval for the goodness of fit index expressed as a percentage}
}
\note{
 The preprocessing must be done in same way as for sample analysis. 
 \cr The resampling mode must be the \code{A}-mode. 
 \cr The starting points for every bootstrap solution are two: rational (using SVD) and solution from the observed sample.
}
\references{H.A.L. Kiers (2004). Bootstrap confidence intervals for three-way methods. \emph{Journal of Chemometrics 18:22--36}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{bootstrapT3}}, \code{\link{CP}}, \code{\link{percentile95}}}
\examples{
data(TV)
TVdata=TV[[1]]
labSCALE=TV[[2]]
labPROGRAM=TV[[3]]
labSTUDENT=TV[[4]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# CP solution
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 0, 1e-6, 10000)
\dontrun{
# Bootstrap analysis on CP solution
boot <- bootstrapCP(TVdata, TVcp$A, TVcp$B, TVcp$C, 30, 16, 15, 2, 1, 1, 1, 
 1e-6, 0, 0, 0, 10000, labSTUDENT, labSCALE, labPROGRAM)
# Bootstrap analysis on CP solution (when labels are not available)
boot <- bootstrapCP(TVdata, TVcp$A, TVcp$B, TVcp$C, 30, 16, 15, 2, 1, 1, 1, 
 1e-6, 0, 0, 0, 10000)
}
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}