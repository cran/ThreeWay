\name{T2func} 
\alias{T2func}
\title{Algorithm for the Tucker2 model}
\description{
Alternating Least Squares algorithm for the minimization of the Tucker2 loss function.
} 
\usage{
 T2func(X, n, m, p, r1, r2, r3, start, conv, model, A, B, C, H) 
 }
\arguments{
 \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
 \item{n}{Number of \code{A}-mode entities}
 \item{m}{Number of \code{B}-mode entities}
 \item{p}{Number of \code{C}-mode entities}
 \item{r1}{Number of extracted components for the \code{A}-mode}
 \item{r2}{Number of extracted components for the \code{B}-mode}
 \item{r3}{Number of extracted components for the \code{C}-mode}
 \item{start}{Starting point: 0 starting point of the algorithm from generalized eigenvalue decomposition, 1 random starting point (orthonormalized component matrices), 2 if users specified component matrices}
 \item{conv}{Convergence criterion}
 \item{model}{Tucker2 model choice (1 for T2-AB, 2 for T2-AC, 3 for T2-BC)}
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
\cr \code{T2func} is the same as \code{T2funcrep} except that all printings are available.
}
\references{H.A.L. Kiers, P.M. Kroonenberg, J.M.F. ten Berge (1992). An efficient algorithm for TUCKALS3 on data with large numbers of observation units. \emph{Psychometrika 57:415--422}. 
\cr P.M. Kroonenberg and J. de Leeuw (1980). Principal component analysis of three-mode data by means of alternating least squares algorithms. \emph{Psychometrika 45:69--97}.
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{T2}},\code{\link{T2funcrep}}}
\examples{
data(Bus)
# labels for Bus data
laba <- rownames(Bus)
labb <- substr(colnames(Bus)[1:5], 1, 1)
labc <- substr(colnames(Bus)[seq(1,ncol(Bus),5)], 3, 8)
# T2-AB solution using two components for the A- and B-modes 
# (rational starting point by SVD [start=0])
BusT2 <- T2func(Bus, 7, 5, 37, 2, 2, 37, 0, 1e-6, 1)
# T2-AC solution using two components for for the A- and C-modes 
# (random orthonormalized starting point [start=1])
BusT2 <- T2func(Bus, 7, 5, 37, 2, 5, 2, 1, 1e-6, 2)
# T2-BC solution using two components for the B- and C- modes 
# (user starting point [start=2])
BusT2 <- T2func(Bus, 7, 5, 37, 7, 2, 2, 1, 1e-6, 3, diag(7), 
 matrix(rnorm(5*2),nrow=5), matrix(rnorm(37*2),nrow=37), 
 matrix(rnorm(7*4),nrow=7))
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}