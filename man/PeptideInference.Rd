\name{PeptideInference}
\alias{PeptideInference}
\alias{PeptideInference.default}

\title{Peptide inference for aLFQ import data frame}
\description{Peptide inference for aLFQ import data frame.}
\usage{
\method{PeptideInference}{default}(data, transition_topx = 3,
transition_strictness = "strict",transition_summary = "sum",
consensus_proteins = TRUE, consensus_transitions = TRUE, ...)
}
\arguments{
  \item{data}{a mandatory data frame containing the \code{"protein_id"}, \code{"peptide_id"}, \code{"transition_id"}, \code{"peptide_sequence"}, \code{"precursor_charge"}, \code{"transition_intensity"} and \code{"concentration"} are required. The id columns can be defined in any format, while the \code{"_intensity"} and \code{"concentration"} columns need to be numeric and in non-log form. The data may contain calibration data (with numeric \code{"concentration"} and test data (with \code{"concentration"} = "?"))}
  \item{transition_topx}{a positive integer value of the top x transitions to consider for transition to peptide intensity estimation methods.}
  \item{transition_strictness}{whether \code{transition_topx} should only consider peptides with the minimal transition number (\code{"strict"}) or all (\code{"loose"}).}
  \item{transition_summary}{how to summarize the transition intensities: \code{"mean"}, \code{"median"}, \code{"sum"}.}
  \item{consensus_proteins}{if multiple runs are provided, select identical proteins among all runs.}
  \item{consensus_transitions}{if multiple runs are provided, select identical transitions among all runs.}
  \item{...}{future extensions.}
}

\details{
The PeptideInference module provides functionality to infer peptide / precursor quantities from the measured precursor or fragment intensities or peptide spectral counts.
}
\value{
  A standard aLFQ import data frame on peptide / precursor level.
}
\references{
Ludwig, C., Claassen, M., Schmidt, A. & Aebersold, R. \emph{Estimation of Absolute Protein Quantities of Unlabeled Samples by Selected Reaction Monitoring Mass Spectrometry.} Molecular & Cellular Proteomics 11, M111.013987-M111.013987 (2012).

}
\author{George Rosenberger \email{rosenberger@imsb.biol.ethz.ch}}

\seealso{\code{\link{import}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}

\examples{
data(UPS2MS)

data_PI <- PeptideInference(UPS2_SRM)
print(data_PI)
}

\keyword{ PeptideInference }
\keyword{ label-free }
\keyword{ quantification }
\keyword{ peptide inference }
