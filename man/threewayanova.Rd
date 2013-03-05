\name{threewayanova}
\alias{threewayanova}
\title{Three-way ANOVA}
\description{
 Computation of three-way Analysis of Variance (ANOVA).
}
\usage{threewayanova(Y, n, m, p)} 
\arguments{
  \item{Y}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
  \item{n}{Number of \code{A}-mode entities}
  \item{m}{Number of \code{B}-mode entities}
  \item{p}{Number of \code{C}-mode entities}
} 
\value{
 A list including the following components:
 \item{SS.a}{Main effect for the \code{A}-mode}
 \item{SS.b}{Main effect for the \code{B}-mode}
 \item{SS.c}{Main effect for the \code{C}-mode}
 \item{SS.ab}{Second order interaction (\code{A}- and \code{B}-mode)}
 \item{SS.bc}{Second order interaction (\code{B}- and \code{C}-mode)}
 \item{SS.ac}{Second order interaction (\code{A}- and \code{C}-mode)}
 \item{SS.abc}{Residual sum of squares after subtraction of second order interactions}
}
\references{H.A.L. Kiers, I. Van Mechelen (2001). Three-way component analysis: principles and illustrative applications. \emph{Psychological Methods 6:84--110}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(TV)
TVdata=TV[[1]]
anova3 <- threewayanova(TVdata, 16, 15, 30)
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
