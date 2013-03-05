\name{T3func} 
\alias{T3func}
\title{Algorithm for the Tucker3 model}
\description{
Alternating Least Squares algorithm for the minimization of the Tucker3 loss function.
} 
\usage{
 T3func(X, n, m, p, r1, r2, r3, start, conv, A, B, C, H) 
 }
\arguments{
  \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
  \item{n}{Number of \code{A}-mode entities}
  \item{m}{Number of \code{B}-mode entities}
  \item{p}{Number of \code{C}-mode entities}
  \item{r1}{Number of extracted components for the \code{A}-mode}
  \item{r2}{Number of extracted components for the \code{B}-mode}
  \item{r3}{Number of extracted components for the \code{C}-mode}
  \item{start}{Starting point (0 starting point of the algorithm from generalized eigenvalue decomposition, 1 random starting point (orthonormalized component matrices), 2 if users specified component matrices}
  \item{conv}{Convergence criterion}
  \item{A}{Optional (necessary if start=2) starting value for \code{A}}
  \item{B}{Optional (necessary if start=2) starting value for \code{B}}
  \item{C}{Optional (necessary if start=2) starting value for \code{C}}
  \item{H}{Optional (necessary if start=2) starting value for the matricized core array (frontal slices)}
}
\value{
 A list including the following components:
 \item{A}{Orthonormal component matrix for the \code{A}-mode}
 \item{B}{Orthonormal component matrix for the \code{B}-mode}
 \item{C}{Orthonormal component matrix for the \code{C}-mode}
 \item{H}{Matricized core array (frontal slices)}
 \item{f}{Loss function value}
 \item{fp}{Fit percentage}
 \item{iter}{Number of iterations}
 \item{cputime}{Computation time}
 \item{La}{Matrix which should be diagonal, and if so, contain \sQuote{intrinsic eigenvalues} for \code{A}-mode}
 \item{Lb}{Matrix which should be diagonal, and if so, contain \sQuote{intrinsic eigenvalues} for \code{B}-mode}
 \item{Lc}{Matrix which should be diagonal, and if so, contain \sQuote{intrinsic eigenvalues} for \code{C}-mode}
} 
\note{
The loss function to be minimized is \eqn{||X_A - A G_A kron(C',B')||^2} where \eqn{X_A} and \eqn{G_A} denote the matricized (frontal slices) data array and core array, respectively, and kron stands for the Kronecker product.
\cr For data with \code{n>>mp} the procedure in Kiers and Harshman (1997) has been implemented. 
\cr\code{T3func} is the same as \code{T3funcrep} except that all printings are available.
}
\references{H.A.L. Kiers, R.A. Harshman (1997). Relating two proposed methods for speedup of algorithms for fitting two- and three-way principal component and related multilinear models. \emph{Chemometrics and Intelligent Laboratory Systems 36:31--40}. 
\cr H.A.L. Kiers, P.M. Kroonenberg, J.M.F. ten Berge (1992). An efficient algorithm for TUCKALS3 on data with large numbers of observation units. \emph{Psychometrika 57:415--422}. 
\cr P.M. Kroonenberg and J. de Leeuw (1980). Principal component analysis of three-mode data by means of alternating least squares algorithms. \emph{Psychometrika 45:69--97}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{T3}}, \code{\link{T3funcrep}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
# T3 solution using two components for all the modes 
# (rational starting point by SVD [start=0])
BusT3 <- T3func(Bus, 7, 5, 37, 2, 2, 2, 0, 1e-6)
# T3 solution using two components for all the modes 
# (random orthonormalized starting point [start=1])
BusT3 <- T3func(Bus, 7, 5, 37, 2, 2, 2, 1, 1e-6)
# T3 solution using two components for all the modes 
# (user starting point [start=2])
BusT3 <- T3func(Bus, 7, 5, 37, 2, 2, 2, 1, 1e-6, matrix(rnorm(7*2),nrow=7), 
 matrix(rnorm(5*2),nrow=5), matrix(rnorm(37*2),nrow=37), 
 matrix(rnorm(2*4),nrow=2))
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}
