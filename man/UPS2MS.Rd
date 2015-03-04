\name{UPS2MS}
\alias{UPS2MS}
\alias{UPS2}
\alias{UPS2_SC}
\alias{UPS2_LFQ}
\alias{UPS2_SRM}
\docType{data}
\title{Calculating absolute and relative protein abundance from mass spectrometry-based protein expression data.}
\description{
We assessed the performance of aLFQ and the different quantification estimation methods it supports by investigating a commercially available synthetic sample. The Universal Proteomic Standard 2 (UPS2) consists of 48 proteins spanning a dynamic range of five orders of magnitude in bins of eight proteins. The sample was measured in a complex background consisting of Mycobacterium bovis BCG total cell lysate in shotgun and targeted MS modes. Three datasets are available: UPS2_SC (spectral counts), UPS2_LFQ (MS1 intensity), UPS2_SRM (MS2 intensity).
}
\usage{data(UPS2MS)}
\format{
The data structure for UPS2_SRM represents a data.frame containing the following column header: \code{"run_id"} (freetext), \code{"protein_id"} (freetext), \code{"peptide_id"} (freetext), \code{"transition_id"} (freetext), \code{"peptide_sequence"} (unmodified, natural amino acid sequence in 1-letter nomenclature), \code{"precursor_charge"} (positive integer value), \code{"transition_intensity"} (positive non-logarithm floating value) and \code{"concentration"} (calibration: positive non-logarithm floating value, prediction: "?").

The data structure for UPS2_LFQ (MS1-level intensity) / UPS2_SC (spectral counts) represents a data.frame containing the columns \code{"run_id"} (freetext), \code{"protein_id"} (freetext), \code{"peptide_id"} (freetext), \code{"peptide_sequence"} (unmodified, natural amino acid sequence in 1-letter nomenclature), \code{"precursor_charge"} (positive integer value), \code{"peptide_intensity"} (positive non-logarithm floating value) and \code{"concentration"} (calibration: positive non-logarithm floating value, prediction: "?"). It should be noted, that the spectral count value is also represented by \code{"peptide_intensity"}.
}
\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}
\examples{
data(UPS2MS)
}
\keyword{datasets}
\keyword{UPS2}
