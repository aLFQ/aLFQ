\name{LUDWIGMS}
\alias{LUDWIGMS}
\alias{LUDWIG_SRM}
\docType{data}
\title{Estimation of Absolute Protein Quantities of Unlabeled Samples by Selected Reaction Monitoring Mass Spectrometry..}
\description{
This dataset contains the Leptospira interrogans MS data from Ludwig C., et al. (2012).
}
\usage{data(LUDWIGMS)}
\format{
The data structure for LUDWIG_SRM represents a data.frame containing the following column header: \code{"run_id"} (freetext), \code{"protein_id"} (freetext), \code{"peptide_id"} (freetext), \code{"transition_id"} (freetext), \code{"peptide_sequence"} (unmodified, natural amino acid sequence in 1-letter nomenclature), \code{"precursor_charge"} (positive integer value), \code{"transition_intensity"} (positive non-logarithm floating value) and \code{"concentration"} (calibration: positive non-logarithm floating value, prediction: "?").
}
\references{
  Ludwig, C., Claassen, M., Schmidt, A. & Aebersold, R. \emph{Estimation of Absolute Protein Quantities of Unlabeled Samples by Selected Reaction Monitoring Mass Spectrometry.} Molecular & Cellular Proteomics 11, M111.013987-M111.013987 (2012).
}
\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}
\examples{
data(LUDWIGMS)
}
\keyword{datasets}
\keyword{UPS2}
