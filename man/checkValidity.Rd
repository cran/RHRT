% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HRT.R, R/HRTList.R
\name{checkValidity}
\alias{checkValidity}
\alias{checkValidity,HRT-method}
\alias{checkValidity,HRTList-method}
\title{Checks whether slots are set}
\usage{
checkValidity(x, ...)

\S4method{checkValidity}{HRT}(x)

\S4method{checkValidity}{HRTList}(x, av = FALSE, pos = FALSE)
}
\arguments{
\item{x}{HRTList}

\item{...}{Other parameters}

\item{av}{(Boolean) Should avHRT be checked?}

\item{pos}{(Boolean) Should pos be checked?}
}
\value{
No return value, possibly throws errors/warnings

No return value, possibly throws errors
}
\description{
Checks whether slots are set

Check for HRTList class
}
