\name{meaudret}
\alias{meaudret}
\title{ Meaudret data}
\description{
 Three-way data about six sampling sites along a small French stream (the Meaudret) on which ten biological and chemical variables are collected four times.
}
\usage{data(meaudret)} 
\format{
 An array of order 6 x 10 x 4.
\cr The A-mode entities are sampling sites (Site1, ..., Site6).
\cr The B-mode entities are biological and chemical variables (Temp, Debi, PH, Cond, Oxyg, Biod, Chem, NH4, NO3, PO4).
\cr The C-mode entities are months (June, August, November, February).
} 
\details{
The ranges of the variables are very different and, therefore, normalization of the raw data is recommended.
The data have been used by Kiers (1991) in order to show the existing relations among three-way methods.
}
\references{H.A.L. Kiers (1991). Hierarchical relations among three-way methods. \emph{Psychometrika 56:449--470}.}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}
\examples{
data(meaudret)
## The labels are in the data array
laba <- dimnames(meaudret)[[1]]
labb <- dimnames(meaudret)[[2]]
labc <- dimnames(meaudret)[[3]]
## Candecomp/Parafac analysis
\dontrun{
CP(meaudret,laba,labb,labc)
## Tucker3 analysis
T3(meaudret,laba,labb,labc)
## Tucker2 analysis
T2(meaudret,laba,labb,labc)
## Tucker1 analysis
T1(meaudret,laba,labb,labc)
}
}
\keyword{data}
\keyword{array}
\keyword{multivariate}
