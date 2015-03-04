\name{APEX}
\alias{APEX}
\alias{APEX.default}
\alias{predict.APEX}
\alias{cval.APEX}
\alias{print.APEX}
\alias{plot.APEX}

\title{Training, testing and validation of APEX peptide observability models}
\description{Calculating absolute and relative protein abundance from mass spectrometry-based protein expression data.}
\usage{
\method{APEX}{default}(data, ...)
\method{predict}{APEX}(object, newdata=NULL, ...)
\method{cval}{APEX}(object, folds=10, ...)
\method{print}{APEX}(x, ...)
\method{plot}{APEX}(x, ...)
}
\arguments{
  \item{data}{an R object of type \code{"apexFeatures"}.}

  \item{object}{an \code{APEX} object.}
  \item{newdata}{an R object of type \code{"apexFeatures"}.}
  \item{folds}{a positive integer value of the number of folds for cross-validation.}
  
  \item{x}{an \code{APEX} object.}

  \item{...}{future extensions.}
}

\details{
The APEX module is a reimplementation of the original algorithm (Lu et al., 2006; Vogel et al., 2008) using the randomForest package. It requires \code{\link{apexFeatures}} input objects and reports the results in an \code{APEX} object, which can be used by the \code{\link{ProteinInference}} module for protein quantification.
}
\value{
  An object of class \code{APEX}.
}
\references{
  Lu, P., Vogel, C., Wang, R., Yao, X. & Marcotte, E. M. \emph{Absolute protein expression profiling estimates the relative contributions of transcriptional and translational regulation.} Nat Biotech 25, 117-124 (2006).

  Vogel, C. & Marcotte, E. M. \emph{Calculating absolute and relative protein abundance from mass spectrometry-based protein expression data.} Nat Protoc 3, 1444-1451 (2008).
}
\author{George Rosenberger \email{rosenberger@imsb.biol.ethz.ch}}

\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}

\examples{
set.seed(131)

data(APEXMS)

APEX_ORBI<-head(APEX_ORBI,50) # Remove this line for real applications
APEX_ORBI.af <- apexFeatures(APEX_ORBI)
APEX_ORBI.apex <- APEX(data=APEX_ORBI.af)
print(APEX_ORBI.apex)

APEX_ORBI_cval.apex <- cval(APEX_ORBI.apex, folds=2)
plot(APEX_ORBI_cval.apex)
}
\keyword{ APEX }
