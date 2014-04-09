\name{Kinship}
\alias{Kinship}
\docType{data}
\title{Kinship terms data}
\description{
  Three-way proximity data about 15 kinship terms produced by 6 groups of subjects. 
}
\usage{data(Kinship)}
\format{
 An array of order 15 x 15 x 6.
\cr The A-mode and B-mode entities are the kinship terms (Aunt, Brother, Cousin, Daughter, Father, Granddaughter, Grandfather, Grandmother, Grandson, Mother, Nephew, Niece, Sister, Son, Uncle).
\cr The C-mode entities are groups of subjects (First female, Second female, First male, Second male, Single female, Single male).
} 
\details{
The original data have been introduced by Rosenborg \& Kim (1975).
The data were collected by asking to 6 groups of subjects to produce a partition of 15 kinship terms.
Two groups (Single female and Single male) were composed by 85 male and 85 female college students, respectively, and provided a single partition. 
Two additional groups of, respectively, 80 male and 80 female students produced two partitions each (First female, Second female, First male, Second male). 
In fact, they were informed in advance that, after making the first partition, they should give a new partition of the kinship terms using a different basis of meaning. 
The array contains similarities. For every group of subjects, the numbers of times in which the kinship terms were grouped together are given.
}
\references{
S. Rosenborg \& M.P. Kim (1975). The method of sorting as a data-gathering procedure in multivariate research. \emph{Multivariate Behavioral Research 10:489--502}.
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta.delferraro@yahoo.it} \cr Henk A.L. Kiers \email{h.a.l.kiers@rug.nl} \cr Paolo Giordani \email{paolo.giordani@uniroma1.it}}

\examples{
data(Kinship)
## The labels are in the data array
laba <- dimnames(Kinship)[[1]]
labb <- dimnames(Kinship)[[2]]
labc <- dimnames(Kinship)[[3]]
## Candecomp/Parafac analysis
\dontrun{
CP(Kinship,laba,labb,labc)
}
}
\keyword{data}
\keyword{array}
\keyword{multivariate}