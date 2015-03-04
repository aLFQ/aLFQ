\name{apexFeatures}
\alias{apexFeatures}
\alias{apexFeatures.default}
\alias{print.apexFeatures}

\title{Calculation of physicochemical amino acid properties for APEX}
\description{Calculation of physicochemical amino acid properties for APEX.}
\usage{
\method{apexFeatures}{default}(x, ...)
\method{print}{apexFeatures}(x, ...)
}
\arguments{
  \item{x}{a mandatory data frame containing the variables in the model.
    The data frame requires the columns \code{"peptide_sequence"}, \code{"apex"}. The data may 
    contain training data (with boolean \code{"apex"} and test data (with \code{"apex"}=\code{NA}))}
  \item{...}{future extensions.}
}

\details{
The apexFeatures function computes the APEX or PeptideSieve features (Mallick et al., 2006; Vogel et al., 2008) based on AAindex (Kawashima et al., 2008) and returns them in an apexFeatures object for further usage in the \code{\link{APEX}} module.
}
\value{
  An object of class \code{apexFeatures}.
}
\references{
Kawashima, S. et al. \emph{AAindex: amino acid index database, progress report 2008.} Nucleic Acids Research 36, D202-5 (2008).

Mallick, P. et al. \emph{Computational prediction of proteotypic peptides for quantitative proteomics.} Nat Biotech 25, 125-131 (2006).

Vogel, C. & Marcotte, E. M. \emph{Calculating absolute and relative protein abundance from mass spectrometry-based protein expression data.} Nat Protoc 3, 1444-1451 (2008).
}
\author{George Rosenberger \email{rosenberger@imsb.biol.ethz.ch}}

\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{proteotypic}}}

\examples{
data(APEXMS)

# APEX_ORBI
APEX_ORBI<-head(APEX_ORBI,20) # Remove this line for real applications
APEX_ORBI.af <- apexFeatures(APEX_ORBI)
print(APEX_ORBI.af)

# APEX_LCQ
APEX_LCQ<-head(APEX_LCQ,20) # Remove this line for real applications
APEX_LCQ.af <- apexFeatures(APEX_LCQ)
print(APEX_LCQ.af)
}
\keyword{ AAIndex }
\keyword{ PeptideSieve }
\keyword{ APEX }
