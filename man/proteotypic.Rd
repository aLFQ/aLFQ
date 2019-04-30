\name{proteotypic}
\alias{proteotypic}
\alias{proteotypic.default}

\title{Prediction of the flyability of proteotypic peptides}
\description{Prediction of the flyability of proteotypic peptides.}
\usage{
\method{proteotypic}{default}(fasta, apex_model, min_aa=4 , max_aa=20, ...)
}
\arguments{
  \item{fasta}{a amino acid FASTA file.}
  \item{apex_model}{an \code{APEX} object.}
  \item{min_aa}{the minimum number of amino acids for proteotypic peptides.}
  \item{max_aa}{the maximum number of amino acids for proteotypic peptides.}

  \item{...}{future extensions.}
}

\details{
This function provides prediction of the "flyability" of proteotypic peptides using the APEX method (Lu et al., 2006; Vogel et al., 2008). The APEX scores are probabilities that indicate detectability of the peptide amino acid sequence in LC-MS/MS experiments.
}
\value{
  A data.frame containing peptide sequences and associated APEX scores.
}
\references{
  Lu, P., Vogel, C., Wang, R., Yao, X. & Marcotte, E. M. \emph{Absolute protein expression profiling estimates the relative contributions of transcriptional and translational regulation.} Nat Biotech 25, 117-124 (2006).
  
  Vogel, C. & Marcotte, E. M. \emph{Calculating absolute and relative protein abundance from mass spectrometry-based protein expression data.} Nat Protoc 3, 1444-1451 (2008).
}

\author{George Rosenberger \email{gr2578@cumc.columbia.edu}}

\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}}

\examples{
set.seed(131)

data(APEXMS)

APEX_ORBI<-head(APEX_ORBI,20) # Remove this line for real applications
APEX_ORBI.af <- apexFeatures(APEX_ORBI)
APEX_ORBI.apex <- APEX(data=APEX_ORBI.af)

peptides <- proteotypic(fasta=system.file("extdata","example.fasta",package="aLFQ"),
apex_model=APEX_ORBI.apex, min_aa=4 , max_aa=20)
\dontrun{print(peptides)}
}

\keyword{APEX}
\keyword{proteotypic peptides}
\keyword{flyability}
\keyword{high-flyers}
