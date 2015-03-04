\name{import}
\alias{import}
\alias{import.default}

\title{import of mass spectrometry proteomics data analysis software reports.}
\description{import of mass spectrometry proteomics data analysis software reports.}
\usage{
\method{import}{default}(ms_filenames, ms_filetype, concentration_filename=NA,
averageruns=FALSE, sumruns=FALSE, mprophet_cutoff=0.01,
openswath_superimpose_identifications=FALSE, openswath_replace_run_id=FALSE,
openswath_filtertop=FALSE, openswath_removedecoys=TRUE,
peptideprophet_cutoff=0.95, abacus_column="ADJNSAF", pepxml2csv_runsplit="~",
...)
}
\arguments{
  \item{ms_filenames}{the paths and filenames of files to import in a character or array class.}
  \item{ms_filetype}{one of \code{"openswath"}, \code{"mprophet"}, \code{"openmslfq"}, \code{"skyline"}, \code{"abacus"} or
  \code{"pepxml2csv"} filetypes. Multiple files of the same type can be supplied in a vector.}
  \item{concentration_filename}{the filename of a csv with concentrations (in any unit). Needs to have 
    the columns \code{"peptide_id"} (or \code{"protein_id"}) and \code{"concentration"}.}
  \item{averageruns}{whether different MS runs should be averaged.}
  \item{sumruns}{whether different MS runs should be summed.}
  \item{mprophet_cutoff}{(openswath and mprophet only:) the FDR cutoff (m_score) for OpenSWATH and mProphet reports.}
  \item{openswath_superimpose_identifications}{(openswath only:) enables propagation of identification among several runs if feature alignment or requantification was conducted.}
  \item{openswath_replace_run_id}{whether the run_id of the MS data should be replaced by the filename.}
  \item{openswath_filtertop}{(openswath only:) whether only the top peakgroup should be considered.}
  \item{openswath_removedecoys}{(openswath only:) whether decoys should be removed.}
  \item{peptideprophet_cutoff}{(abacus and pepxml2csv only:) the PeptideProphet probability cutoff for Abacus reports.}
  \item{abacus_column}{(abacus only:) target score: one of \code{"NUMSPECSTOT"},\code{"TOTNSAF"},\code{"NUMSPECSUNIQ"},
  \code{"UNIQNSAF"},\code{"NUMSPECSADJ"} or \code{"ADJNSAF"}.}
  \item{pepxml2csv_runsplit}{(pepxml2csv only:) the separator of the run_id and spectrum_id column.}

  \item{...}{future extensions.}
}

\details{
The import function provides unified access to the results of various standard proteomic quantification applications like OpenSWATH (Roest et al., 2014), mProphet (Reiter et al., 2011), OpenMS (Sturm et al., 2008; Weisser et al., 2013),Skyline (MacLean et al., 2010) and Abacus (Fermin et al., 2011). This enables generic application of all further steps using the same data structure and enables extension to support other data formats. If multiple runs, i.e. replicates, are supplied, the averaged or summed values can be used to summarize the experimental data. In addition to the input from the analysis software, an input table with the anchor peptides or proteins and sample specific absolute abundance, or an estimate of the total protein concentration in the sample is required. The endpoint of this step is a unified input data structure.
}
\value{
  A standard aLFQ import data frame, either on transition, peptide (precursor) or protein level.
}
\references{
Roest H. L. et al. \emph{A tool for the automated, targeted analysis of data-independent acquisition (DIA) MS-data: OpenSWATH.} Nat Biotech, in press.

Reiter, L. et al. \emph{mProphet: automated data processing and statistical validation for large-scale SRM experiments.} Nat Meth 8, 430-435 (2011).

Sturm, M. et al.  \emph{OpenMS - An open-source software framework for mass spectrometry.} BMC Bioinformatics 9, 163 (2008).

Weisser, H. et al. \emph{An automated pipeline for high-throughput label-free quantitative proteomics.} J. Proteome Res. 130208071745007 (2013). doi:10.1021/pr300992u

MacLean, B. et al. \emph{Skyline: an open source document editor for creating and analyzing targeted proteomics experiments.} Bioinformatics 26, 966-968 (2010).

Fermin, D., Basrur, V., Yocum, A. K. & Nesvizhskii, A. I. \emph{Abacus: A computational tool for extracting and pre-processing spectral count data for label-free quantitative proteomic analysis.} PROTEOMICS 11, 1340-1345 (2011).
}
\author{George Rosenberger \email{rosenberger@imsb.biol.ethz.ch}}

\seealso{\code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}

\examples{
import(ms_filenames = system.file("extdata","example_openswath.txt",package="aLFQ"),
ms_filetype = "openswath", concentration_filename=NA,
averageruns=FALSE, sumruns=FALSE, mprophet_cutoff=0.01,
openswath_superimpose_identifications=FALSE, openswath_replace_run_id=FALSE,
openswath_filtertop=FALSE, openswath_removedecoys=TRUE)

import(ms_filenames = system.file("extdata","example_mprophet.txt",package="aLFQ"),
ms_filetype = "mprophet",
concentration_filename = system.file("extdata","example_concentration_peptide.csv",
package="aLFQ"), averageruns=FALSE, sumruns=FALSE, mprophet_cutoff=0.01)

import(ms_filenames = system.file("extdata","example_openmslfq.csv",package="aLFQ"),
ms_filetype = "openmslfq", concentration_filename=NA, averageruns=FALSE, sumruns=FALSE)

import(ms_filenames = system.file("extdata","example_skyline.csv",package="aLFQ"),
ms_filetype = "skyline",
concentration_filename =
system.file("extdata","example_concentration_protein.csv",package="aLFQ"),
averageruns=FALSE, sumruns=FALSE)

import(ms_filenames = system.file("extdata","example_abacus_protein.txt",package="aLFQ"),
ms_filetype = "abacus", concentration_filename =
system.file("extdata","example_concentration_protein.csv",
package="aLFQ"), averageruns=FALSE, sumruns=FALSE,
peptideprophet_cutoff=0.95, abacus_column="ADJNSAF")
}

\keyword{ OpenSWATH }
\keyword{ mProphet }
\keyword{ OpenMS }
\keyword{ LFQ }
\keyword{ Skyline }
\keyword{ Abacus }
