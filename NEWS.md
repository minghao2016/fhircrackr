# fhircrackr 0.2.1

- fhir_melt now gives a warning when the brackets provided in the function call don't appear in the data frame 

- A number of bugs have been fixed 

	- unintended type changes from data.frame to data.table are now prevented
	- `fhir_melt()` now takes the name provided in the argument `id_name` (which because of a bug it didn't before)
	- inconsistencies in assignment of default values to the design for `fhir_crack()` have been cleared
	- fixed bug causing column names to disappear when `cols` element of design was of length one
	
	


# fhircrackr 0.2.0

- design for `fhir_crack()` has new form now:

   1. has now named elements `resource`, `cols`, `style` (with style elements `sep`, `brackets`, `rm_empty_cols`)

   2. old versions of design still work

- new function `fhir_canonical_design()` returns the full (potentially automatically completed) design of the most recent call to `fhir_crack()`

- argument `add_indices` of `fhir_crack()` is now deprecated, indices will be added when `brackets` is not NULL

- new argument `columns` of `fhir_rm_indices()` gives control over the columns in which indices should be removed

- new functions `fhir_save_design()` and `fhir_load_design()` for saving/loading design as xml-document

- new function `fhir_next_bundle_url()` returns next-link of the last bundle processed by the most recent call to `fhir_search()`

- new arguments `save_to_disc` and `directory` of `fhir_search()` allow for saving bundles consecutively as xml files instead of loading them into the R session all at once

- Faster results of `fhir_crack()` because it now uses data.table internally

- new argument `data.table` of `fhir_crack` to choose between data.frame vs. data.table as output format


# fhircrackr 0.1.1

- fixed errors in `fhir_crack()` when resource type doesn't appear in bundle

- handle errors caused by the accidental use of serialized objects more gracefully

- `@value` at the end of an XPath expression pointing to an attribute for `design` used in `fhir_crack()` is now optional and will be added automatically by fhir_crack if omitted

- column names automatically generated by `fhir_crack()` are now shorter.



# fhircrackr 0.1.0

First Release of R-Package fhirckrackr v0.1.0