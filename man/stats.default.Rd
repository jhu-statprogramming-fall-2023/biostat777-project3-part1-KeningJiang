% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table1.R
\name{stats.default}
\alias{stats.default}
\title{Compute some basic descriptive statistics.}
\usage{
stats.default(x, quantile.type = 7, ...)
}
\arguments{
\item{x}{A vector or numeric, factor, character or logical values.}

\item{quantile.type}{An integer from 1 to 9, passed as the \code{type}
argument to function \code{\link[stats]{quantile}}.}

\item{...}{Further arguments (ignored).}
}
\value{
A list. For numeric \code{x}, the list contains the numeric elements:
\itemize{
  \item \code{N}: the number of non-missing values
  \item \code{NMISS}: the number of missing values
  \item \code{SUM}: the sum of the non-missing values
  \item \code{MEAN}: the mean of the non-missing values
  \item \code{SD}: the standard deviation of the non-missing values
  \item \code{MIN}: the minimum of the non-missing values
  \item \code{MEDIAN}: the median of the non-missing values
  \item \code{CV}: the percent coefficient of variation of the non-missing values
  \item \code{GMEAN}: the geometric mean of the non-missing values if non-negative, or \code{NA}
  \item \code{GSD}: the geometric standard deviation of the non-missing values if non-negative, or \code{NA}
  \item \code{GCV}: the percent geometric coefficient of variation of the
  non-missing values if non-negative, or \code{NA}
  \item \code{qXX}: various quantiles (percentiles) of the non-missing
  values (q01: 1\%, q02.5: 2.5\%, q05: 5\%, q10: 10\%, q25: 25\% (first
  quartile), q33.3: 33.33333\% (first tertile), q50: 50\% (median, or second
  quartile), q66.7: 66.66667\% (second tertile), q75: 75\% (third quartile),
  q90: 90\%, q95: 95\%, q97.5: 97.5\%, q99: 99\%)
  \item \code{Q1}: the first quartile of the non-missing values (alias \code{q25})
  \item \code{Q2}: the second quartile of the non-missing values (alias \code{q50} or \code{Median})
  \item \code{Q3}: the third quartile of the non-missing values (alias \code{q75})
  \item \code{IQR}: the inter-quartile range of the non-missing values (i.e., \code{Q3 - Q1})
  \item \code{T1}: the first tertile of the non-missing values (alias \code{q33.3})
  \item \code{T2}: the second tertile of the non-missing values (alias \code{q66.7})
}
If \code{x} is categorical (i.e. factor, character or logical), the list
contains a sublist for each category, where each sublist contains the
numeric elements:
\itemize{
  \item \code{FREQ}: the frequency count
  \item \code{PCT}: the percent relative frequency, including NA in the denominator
  \item \code{PCTnoNA}: the percent relative frequency, excluding NA from the denominator
  \item \code{NMISS}: the number of missing values
}
}
\description{
Values of type \code{factor}, \code{character} and \code{logical} are
treated as categorical. For logicals, the two categories are given the
labels `Yes` for \code{TRUE}, and `No` for \code{FALSE}.  Factor levels with
zero counts are retained.
}
\examples{
x <- exp(rnorm(100, 1, 1))
stats.default(x)

y <- factor(sample(0:1, 99, replace=TRUE), labels=c("Female", "Male"))
y[1:10] <- NA
stats.default(y)
stats.default(is.na(y))

}
\keyword{utilities}
