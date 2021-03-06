% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roll.R
\name{roll}
\alias{roll}
\title{Apply method on sliding window}
\usage{
roll(intervals, width, fun, ...)
}
\arguments{
\item{intervals}{vector}

\item{width}{window size}

\item{fun}{function to be applied}

\item{...}{additional arguments for FUN}
}
\value{
(list) List with return values of fun for each window
}
\description{
Applies a given function on a vector by rolling over it with a sliding window
mechanism.
}
\details{
This method was inspired by the function "wapply" by A. N. Spiess, University
Hospital Hamburg-Eppendorf (https://rmazing.wordpress.com/2013/04/23/wapply-a-faster-but-less-functional-rollapply-for-vector-setups/),
but adjusted for this package to speed it up.
}
