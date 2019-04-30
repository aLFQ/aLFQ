\name{aLFQ-package}
\alias{aLFQ-package}
\alias{aLFQ}
\docType{package}

\title{aLFQ}
\description{Estimating Absolute Protein Quantities from Label-Free LC-MS/MS Proteomics Data}
\details{
\tabular{ll}{
Package: \tab aLFQ\cr
Type: \tab Package\cr
Version: \tab 1.3.5\cr
Date: \tab 2019-04-30\cr
Author: \tab George Rosenberger, Hannes Roest, Christina Ludwig, Ruedi Aebersold, Lars Malmstroem\cr
Maintainer: \tab George Rosenberger <gr2578@cumc.columbia.edu>\cr
Depends: \tab R (>= 2.15.0)\cr
Imports: \tab data.table, plyr, caret, seqinr, lattice, randomForest, ROCR, reshape2, protiq, bio3d\cr
Suggests: \tab testthat\cr
License: \tab GPL version 3 or newer\cr
URL: \tab \url{https://github.com/aLFQ}\cr
NeedsCompilation: \tab no\cr
Repository: \tab CRAN\cr
}
Determination of absolute protein quantities is necessary for multiple applications, such as mechanistic modeling of biological systems. Quantitative liquid chromatography tandem mass spectrometry (LC-MS/MS) proteomics can measure relative protein abundance on a system-wide scale. To estimate absolute quantitative information using these relative abundance measurements requires additional information such as heavy-labeled references of known concentration. Multiple methods have been using different references and strategies; some are easily available whereas others require more effort on the users end. Hence, we believe the field might benefit from making some of these methods available under an automated framework, which also facilitates validation of the chosen strategy. We have implemented the most commonly used absolute label-free protein abundance estimation methods for LC-MS/MS modes quantifying on either MS1-, MS2-levels or spectral counts together with validation algorithms to enable automated data analysis and error estimation. Specifically, we used Monte-carlo cross-validation and bootstrapping for model selection and imputation of proteome-wide absolute protein quantity estimation. Our open-source software is written in the statistical programming language R and validated and demonstrated on a synthetic sample. 
}

\seealso{\code{\link{import}}, \code{\link{ProteinInference}}, \code{\link{AbsoluteQuantification}}, \code{\link{ALF}}, \code{\link{APEX}}, \code{\link{apexFeatures}}, \code{\link{proteotypic}}}

\examples{
\dontrun{help(package="aLFQ")}
}

\keyword{ aLFQ }
