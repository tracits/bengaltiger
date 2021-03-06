% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateStudySample.R
\name{CreateStudySample}
\alias{CreateStudySample}
\title{Create study sample}
\usage{
CreateStudySample(study.data, inclusion.criteria, complete.cases = TRUE,
  save.to.disk = TRUE, file.format = "docx", override = TRUE)
}
\arguments{
\item{study.data}{Data frame. The study data. No defaults.}

\item{inclusion.criteria}{A list of functions. Each function should represent
an inclusion criterion. No default.}

\item{complete.cases}{Logical vector of length 1. If TRUE only complete cases
will be returned. If FALSE all cases are returned. Defaults to TRUE.}

\item{save.to.disk}{Logical vector of length 1. If TRUE a file named
"exclusions" is saved to disk where the exclusions are
described. Defaults to TRUE.}

\item{file.format}{Character vector of length 1. Has to be either "docx" or
"rmd". The format in which the file detailing the exclusions is
saved. Defaults to "docx".}

\item{override}{Logical vector of length 1. If TRUE the file "exclusions" is
replaced if it exists. If FALSE the function aborts if the file
exists. Defaults to TRUE.}
}
\description{
Creates the study sample using a list of inclusion criteria. Note that the
selection process is stepwise in the order given by the inclusion criteria.
}
