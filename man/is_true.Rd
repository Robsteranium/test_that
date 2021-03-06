\name{is_true}
\alias{expect_true}
\alias{is_true}
\title{Expectation: is the object true?}
\usage{
  is_true()

  expect_true(actual, info = NULL, label = NULL)
}
\arguments{
  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
  This is a fall-back expectation that you can use when
  none of the other more specific expectations apply. The
  disadvantage is that you may get a less informative error
  message.
}
\examples{
expect_that(2 == 2, is_true())
expect_true(2 == 2)
# Failed expectations will throw an error
\dontrun{
expect_that(2 != 2, is_true())
}
expect_that(!(2 != 2), is_true())
# or better:
expect_that(2 != 2, is_false())

a <- 1:3
expect_that(length(a) == 3, is_true())
# but better to use more specific expectation, if available
expect_that(length(a), equals(3))
}
\seealso{
  \code{\link{is_false}} for complement

  Other expectations: \code{\link{equals}},
  \code{\link{expect_equal}},
  \code{\link{expect_equivalent}},
  \code{\link{expect_error}}, \code{\link{expect_false}},
  \code{\link{expect_identical}}, \code{\link{expect_is}},
  \code{\link{expect_match}}, \code{\link{expect_message}},
  \code{\link{expect_output}},
  \code{\link{expect_warning}},
  \code{\link{gives_warning}}, \code{\link{is_a}},
  \code{\link{is_equivalent_to}}, \code{\link{is_false}},
  \code{\link{is_identical_to}}, \code{\link{matches}},
  \code{\link{prints_text}}, \code{\link{shows_message}},
  \code{\link{takes_less_than}}, \code{\link{throws_error}}
}

