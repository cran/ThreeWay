\name{TV}
\alias{TV}
\docType{data}
\title{TV data}
\usage{data(TV)}
\description{
  Three-way data about rating of 15 American television shows on 16 bipolar scales made by 30 students. 
}
\format{
A list containing one data.frame and three character vectors.
\cr \code{TV[[1]]} is a data.frame with 16 rows and 450 (15 \code{x} 30) columns.
\cr The rows refer to the American television shows.
\cr The columns refer to the combinations of scales and students with the sclaes nested within the students.
\cr The data.frame contains the frontal slices next to each other of the original array. 
\cr The labels for the bipolar scales are in the character vector \code{TV[[2]]}.
\cr The labels for the TV programs are in the character vector \code{TV[[3]]}.
\cr The labels for the students are in the character vector \code{TV[[4]]}.
} 
\details{
The original data set consists of ratings made by 40 subjects (psychology students at the University of Western Ontario in 1981).
To avoid missing data, only 30 students are considered.
The ratings are made on 13-point bipolar scales.
Lundy et al. (1989) perform Candecomp/Parafac on the preprocessed data. 
Details on preprocessing are not reported, but should be centered within TV programs and scales.
Three real components are extracted. However, the unconstrained Candecomp/Parafac solution with three components suffers from the so-called degeneracy (obtained solution with highly correlated and uninterpretable dimensions). 
Degeneracy (see, for instance,  Harshman \& Lundy, 1984; Stegeman, 2006, 2007; De Silva \& Lim, 2008; Rocci \& Giordani, 2010) can be overcome by imposing orthogonal constraints in one of the component matrices. 
The so-obtained solution with three components is meaningful and interpretable as described in Lundy et al. (1989).
}
\references{
V. De Silva \& L.-H. Lim (2008). Tensor rank and the ill-posedness of the best low-rank approximation problem. \emph{SIAM Journal on Matrix Analysis and Applications 30:1084--1127}.
\cr R.A. Harshman \& M.E. Lundy (1984). Data preprocessing and the extended PARAFAC model. In \emph{H.G. Law, C.W. Snyder Jr, J.A. Hattie, \& R.P. McDonald (Eds.): Research methods for multimode data analysis}. Praeger, New York (pp. 216--284).
\cr M.E. Lundy, R.A. Harshman \& J.B. Kruskal (1989). A two-stage procedure incorporating good features of both trilinear and quadrilinear models. In \emph{R. Coppi, S. Bolasco (Eds.): Multiway Data Analysis}. Elsevier, North Holland (pp. 123--130).
\cr R. Rocci R \& P. Giordani (2010). A weak degeneracy decomposition for the CANDECOMP/PARAFAC  model. \emph{Journal of Chemometrics 24:57--66}.
\cr A. Stegeman (2006). Degeneracy in Candecomp/Parafac explained for \code{pxpx2} arrays of rank p+1 or higher. \emph{Psychometrika 71:483--501}.
\cr A. Stegeman (2007). Degeneracy in Candecomp/Parafac and Indscal explained for several three-sliced arrays with a two-valued typical rank. \emph{Psychometrika 72:601--619}.
}
\author{Maria Antonietta Del Ferraro \email{mariaantonietta7@alice.it}, Henk A.L. Kiers \email{h.a.l.kiers@rug.nl}, Paolo Giordani \email{Paolo.Giordani@uniroma1.it}}
\examples{
# to perform stability check and produce bootstrap confidence intervals 
# it is useful to permute the modes so that the A-mode refers to students
data(TV)
TVdata=TV[[1]]
labSCALE=TV[[2]]
labPROGRAM=TV[[3]]
labSTUDENT=TV[[4]]
TVdata <- permnew(TVdata, 16, 15, 30)
TVdata <- permnew(TVdata, 15, 30, 16)
}
\keyword{array}

