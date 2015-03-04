# aLFQ

## Installation of release version from CRAN
install.packages("aLFQ")

## Installation of development version from GitHub
install.packages("devtools")

library(devtools)

install_github("grosenberger/aLFQ")

## Description
Determination of absolute protein quantities is necessary for multiple applications, such as mechanistic modeling of biological systems. Quantitative liquid chromatography tandem mass spectrometry (LC-MS/MS) proteomics can measure relative protein abundance on a system-wide scale. To estimate absolute quantitative information using these relative abundance measurements requires additional information such as heavy-labeled references of known concentration. Multiple methods have been using different references and strategies; some are easily available whereas others require more effort on the users end. Hence, we believe the field might benefit from making some of these methods available under an automated framework, which also facilitates validation of the chosen strategy. We have implemented the most commonly used absolute label-free protein abundance estimation methods for LC-MS/MS modes quantifying on either MS1-, MS2-levels or spectral counts together with validation algorithms to enable automated data analysis and error estimation. Specifically, we used Monte-carlo cross-validation and bootstrapping for model selection and imputation of proteome-wide absolute protein quantity estimation. Our open-source software is written in the statistical programming language R and validated and demonstrated on a synthetic sample.

## Citation
aLFQ: An R-package for estimating absolute protein quantities from label-free LC-MS/MS proteomics data.
Rosenberger G, Ludwig C, Röst HL, Aebersold R, Malmström L. Bioinformatics. 2014 Sep 1;30(17):2511-3. doi: 10.1093/bioinformatics/btu200. Epub 2014 Apr 20.