% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotLRRAndCNVs.R
\name{PlotLRRAndCNVs}
\alias{PlotLRRAndCNVs}
\title{PlotLRRAndCNVs}
\source{
\url{http://biopsych.dk/iPsychCNV}
}
\usage{
PlotLRRAndCNVs(CNV, Sample = MockData, CNVMean = 0.3, Name = "Test.png",
  Roi = RoiSingleMock, width = 12, height = 5, dpi = 100, PNG = TRUE,
  WindowSize = 35)
}
\arguments{
\item{CNV:}{Copy Number Variation, default = Unknown.}

\item{Sample:}{Unknown, default = MockData.}

\item{CNVMean:}{Unknown, default = Unknown.}

\item{Name:}{Unknown, default = Unknown.}

\item{Roi:}{Region of Interest or hotspot, default = Unknown.}

\item{Width:}{Unknown, default = 12.}

\item{Height:}{Unknown, default = 5.}

\item{Dpi:}{Dots per inch, default = 100.}

\item{PNG:}{Portable Network Graphics, default = TRUE.}
}
\value{
Classification for LRR.
}
\description{
PlotLRRAndCNVs: Plot Log R Ratio (LRR) and copy number variations (CNVs) for the whole mock sample.
}
\details{
Specifically designed to handle noisy data from amplified DNA on phenylketonuria (PKU) cards. The function is a pipeline using many subfunctions.
}
\examples{
Unknown.

}
\author{
Marcelo Bertalan, Louise K. Hoeffding.
}

