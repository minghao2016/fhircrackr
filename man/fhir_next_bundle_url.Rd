% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fhircrack.R
\name{fhir_next_bundle_url}
\alias{fhir_next_bundle_url}
\title{Next Bundle's URL}
\usage{
fhir_next_bundle_url()
}
\value{
A string containing an url to the next bundle available on the FHIR server of your last call to
\code{\link{fhir_search}} or NULL if no further bundle is available.
}
\description{
fhir_next_bundle_url() gives the url of the next available bundle.
This is useful when you have not a lot of memory available or when a download of bundles was
interrupted for some reason. In case of small memory, you can use \code{fhir_next_bundle_url} together with the
\code{max_bundle} argument from \code{\link{fhir_search}} to download bundles in smaller batches in a loop.
See details in the example.
}
\examples{
\donttest{
# workflow for small memory environments, downloading small batches of bundles
# for really small memory environments consider also using the _count option in
# your FHIR search request.
# You can iteratively download, crack and save the bundles until all bundles are processed or the
# desired number of bundles is reached.
url <- "http://hapi.fhir.org/baseR4/Observation"
count <- 0
while(!is.null(url) && count < 5){
	bundles <- fhir_search(url, verbose = 2, max_bundles = 2)
	tables <- fhir_crack(bundles, list(Obs=list(resource = "//Observation")))
	save(tables, file = paste0(tempdir(),"/table_", count, ".RData"))
	count <- count + 1
	url <- fhir_next_bundle_url()
}
}

}
