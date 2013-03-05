\name{CPfuncrep} 
\alias{CPfuncrep}
\title{Algorithm for the Candecomp/Parafac (CP) model}
\description{
 Alternating Least Squares algorithm for the minimization of the Candecomp/Parafac loss function.
}
\usage{
 CPfuncrep(X, n, m, p, r, ort1, ort2, ort3, start, conv, maxit, A, B, C)
}
\arguments{
  \item{X}{Matrix (or data.frame coerced to a matrix) of order (\code{n} \code{x} \code{mp}) containing the matricized array (frontal slices)}
  \item{n}{Number of \code{A}-mode entities}
  \item{m}{Number of \code{B}-mode entities}
  \item{p}{Number of \code{C}-mode entities}
  \item{r}{Number of extracted components}
  \item{ort1}{Type of constraints on \code{A} (1 for no constraints, 2 for orthogonality constraints, 3 for zero correlations constraints)}
  \item{ort2}{Type of constraints on \code{B} (1 for no constraints, 2 for orthogonality constraints, 3 for zero correlations constraints)}
  \item{ort3}{Type of constraints on \code{C} (1 for no constraints, 2 for orthogonality constraints, 3 for zero correlations constraints)}
  \item{start}{Starting point (0 for starting point of the algorithm from SVD's, 1 for random starting point (orthonormalized component matrices), 2 for user specified components}
  \item{conv}{Convergence criterion}
  \item{maxit}{Maximal number of iterations}
  \item{A}{Optional (necessary if start=2) starting value for \code{A}}
  \item{B}{Optional (necessary if start=2) starting value for \code{B}}
  \item{C}{Optional (necessary if start=2) starting value for \code{C}}
} 
\value{
 A list including the following components:
 \item{A}{Component matrix for the \code{A}-mode}
 \item{B}{Component matrix for the \code{B}-mode}
 \item{C}{Component matrix for the \code{C}-mode}
 \item{f}{Loss function value}
 \item{fp}{Fit value expressed as a percentage} 
 \item{iter}{Number of iterations}
 \item{tripcos}{Minimal triple cosine between two components across three component matrices (to inspect degeneracy)}
 \item{mintripcos}{Minimal triple cosine during the iterative algorithm observed at every 10 iterations (to inspect degeneracy)}
 \item{ftiter}{Matrix containing in each row the function value and the minimal triple cosine at every 10 iterations}
 \item{cputime}{Computation time}
}
\note{
The loss function to be minimized is \eqn{sum(k)|| X(k) - A D(k) B' ||^2}, where \eqn{D(k)} is a diagonal matrix holding the \code{k}-th row of \code{C}.
\cr For data with \code{n>>mp} the procedure in Kiers and Harshman (1997) has been implemented. 
\code{CPfuncrep} is the same as \code{CPfunc} except that all printings are suppressed. Thus, \code{CPfuncrep} can be helpful for simulation experiments.
}
\references{H.A.L. Kiers, R.A. Harshman (1997). Relating two proposed methods for speedup of algorithms for fitting two- and three-way principal component and related multilinear models. \emph{Chemometrics and Intelligent Laboratory Systems 36:31--40}. 
\cr R.A. Harshman (1970) Foundations of the Parafac procedure: models and conditions for an \sQuote{explanatory} multi-mode factor analysis. \emph{UCLA Working Papers in Phonetics 16:1--84}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\seealso{\code{\link{CP}}, \code{\link{CPfunc}}}
\examples{
data(TV)
TVdata=TV[[1]]
# permutation of the modes so that the A-mode refers to students
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
# unconstrained CP solution using two components 
# (rational starting point by SVD [start=0])
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 0, 1e-6, 10000)
# constrained CP solution using two components with orthogonal A-mode  
# component matrix (rational starting point by SVD [start=0])
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 2, 1, 1, 0, 1e-6, 10000)
# constrained CP solution using two components with orthogonal A-mode 
# component matrix and zero correlated C-mode component matrix 
# (rational starting point by SVD [start=0])
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 2, 1, 3, 0, 1e-6, 10000)
# unconstrained CP solution using two components 
# (random orthonormalized starting point [start=1])
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 1, 1e-6, 10000)
# unconstrained CP solution using two components (user starting point [start=2])
TVcp <- CPfuncrep(TVdata, 30, 16, 15, 2, 1, 1, 1, 2, 1e-6, 10000, 
 matrix(rnorm(30*2),nrow=30), matrix(rnorm(16*2),nrow=16), 
 matrix(rnorm(15*2),nrow=15))
}
\keyword{array}
\keyword{multivariate}
\keyword{algebra}