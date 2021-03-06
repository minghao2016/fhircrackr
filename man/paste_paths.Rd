% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fhircrack.R
\name{paste_paths}
\alias{paste_paths}
\title{Concatenate paths}
\usage{
paste_paths(path1 = "w", path2 = "d", os = "LiNuX")
}
\arguments{
\item{path1}{A string specifying the left hand part of the resulting path.}

\item{path2}{A string specifying the right hand part of the resulting path.}

\item{os}{A string specifying the operating system you're operating on: windows or linux.}
}
\value{
A string containing the concatenated path.
}
\description{
Concatenates two strings to path string correctly.
}
\examples{
paste_paths("data", "patients")
paste_paths("/data", "patients")
paste_paths("/data/", "patients")
paste_paths("/data", "/patients")
paste_paths("/data/", "/patients/")
paste_paths("data", "patients", "windows")
}
