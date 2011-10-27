\name{Bus}
\alias{Bus}
\docType{data}
\title{Bus data}
\description{
  Three-way data about the process of learning to read of seven first-grade children tested weekly (from week 3 to 47, but weeks 10, 19, 20, 29, 35, 36, 39, 43 were holidays and, thus, data on 37 weeks) with five different tests. 
}
\usage{data(Bus)} 
\format{
 A matrix with 7 rows and 185 (5x37) columns.
\cr The rows refer to the pupils.
\cr The columns refer to the combinations of tests and weeks with the tests nested within the weeks.
\cr The matrix contains the frontal slices next to each other of the original array. 
\cr The meanings and the ranges of the tests are as follows:
\cr \code{L}: letter knowledge test (scores in 0-47);
\cr \code{P}: regular orthographic short words (scores in 0-10); 
\cr \code{Q}: regular orthographic long words (scores in 0-10);
\cr \code{S}: regular orthographic long and short words within context (scores in 0-15);
\cr \code{R}: irregular orthographic long and short words (scores in 0-15).
} 
\details{
In the literature the Bus data have been analyzed by Tucker3 (see Kroonenberg, 1983; Timmerman, 2001)
There is consensus on normalizing the data so to eliminate artificial differences among ranges of tests.
Different centering options and numbers of extracted components have been chosen. 
Specifically, Kroonenberg (1983) suggests averaging over pupils and tests for each time occasions and extracting two components for every mode.
Timmerman (2001) suggests to apply Tucker3 to the normalized data with two components for pupils and time occasions and one component for tests.
}
\references{P.M. Kroonenberg (1983). \emph{Three-mode Principal Component Analysis. Theory and Applications}. DSWO Press, Leiden
\cr M.E. Timmerman (2001). \emph{Component Analysis of Multisubject Multivariate Longitudinal Data}. Ph.D. Thesis, University of Groningen.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\keyword{array} 
