\name{LineCon} 
\alias{LineCon}
\title{Middle point location}
\description{
 Checks whether the middle point is located below or on the line connecting its neighbors.
} 
\usage{
 LineCon(f1, f2, f3, fp1, fp2, fp3)
}
\arguments{
 \item{f1}{Goodness-of-fit value for the first point}
 \item{f2}{Goodness-of-fit value for the second point}
 \item{f3}{Goodness-of-fit value for the third point}
 \item{fp1}{Number of effective parameters for the first point}
 \item{fp2}{Number of effective parameters for the second point}
 \item{fp3}{Number of effective parameters for the third point}
}
\value{
 \item{ret}{Value that indicates if the middle point is located below or on the line connecting its neighbors (0 if the middle point is not located below the line connecting its neighbors, 1  if the middle point is not located on the line connecting its neighbors)}
}
\references{ E. Ceulemans and H.A.L. Kiers (2006). Selecting among three-mode principal component models of different types and complexities: A numerical convex hull based method. \emph{British Journal of Mathematical and Statistical Psychology 59:133--150}. 
\cr J. Weesie and H. Van Houwelingen (1983). \emph{GEPCAM users' manual (first draft)}. Utrecht, The Netherlands: Institute of Mathematical Statistics, State University of Utrecht.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\seealso{\code{\link{DimSelector}}}
\examples{
data(Bus)
# T2-AB with 1 component for the A- and B-mode
FitBusT2AB11 <- T2funcrep(Bus, 7, 5, 37, 1, 1, 37, 0, 1e-6,1)$fp
# T2-AB with 2 components for the A-mode and 1 component for the B-mode
FitBusT2AB21 <- T2funcrep(Bus, 7, 5, 37, 2, 1, 37, 0, 1e-6, 1)$fp
# T2-AB with 1 component for the A-mode and 2 components for the B-mode
# T2-AB with 1 component for the A-mode and 2 components for the B-mode
# FitBusT2AB21>FitBusT2AB12
# T2-AB with 2 components for the A- and B-mode
FitBusT2AB22 <- T2funcrep(Bus, 7, 5, 37, 2, 2, 37, 0, 1e-6,1)$fp
# number of effective parameters n x r1 + m x r2 + r1 x r2 x p - r1^2 - r2^2
nepT2AB11 <- 47
nepT2AB21 <- 88
nepT2AB22 <- 164
ret <- LineCon(FitBusT2AB11, FitBusT2AB21, FitBusT2AB22, nepT2AB11, nepT2AB21, nepT2AB22)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}