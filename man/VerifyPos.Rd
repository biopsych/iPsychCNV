% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VerifyPos.R
\name{VerifyPos}
\alias{VerifyPos}
\title{VerifyPos}
\source{
\url{http://biopsych.dk/iPsychCNV}
}
\usage{
VerifyPos(Pos, argument = "Position")
}
\arguments{
\item{Pos:}{Position of the loci to plot, in the form chr21:1050000-1350000.}

\item{Argument:}{A character string, default being position, which is added to the beining of the error message. E.g position/highlight argument is not valid.}
}
\value{
An error message if the postion is not valid.
}
\description{
VerifyPos: Verify each genomic position.
}
\details{
Checks if a genomic position is valid.
}
\examples{
VerifyPos("chr21:1050000-135")
}
\author{
Johan Hilge Thygesen, Louise K. Hoeffding.
}

