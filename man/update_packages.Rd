% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deps.R
\name{update_packages}
\alias{update_packages}
\title{Update packages that are missing or out-of-date.}
\usage{
update_packages(
  packages = TRUE,
  dependencies = NA,
  upgrade = c("default", "ask", "always", "never"),
  force = FALSE,
  quiet = FALSE,
  build = TRUE,
  build_opts = c("--no-resave-data", "--no-manual", "--no-build-vignettes"),
  build_manual = FALSE,
  build_vignettes = FALSE,
  repos = getOption("repos"),
  type = getOption("pkgType"),
  ...
)
}
\arguments{
\item{packages}{Character vector of packages to update.}

\item{dependencies}{Which dependencies do you want to check?
Can be a character vector (selecting from "Depends", "Imports",
"LinkingTo", "Suggests", or "Enhances"), or a logical vector.

\code{TRUE} is shorthand for "Depends", "Imports", "LinkingTo" and
"Suggests". \code{NA} is shorthand for "Depends", "Imports" and "LinkingTo"
and is the default. \code{FALSE} is shorthand for no dependencies (i.e.
just check this package, not its dependencies).

The value "soft" means the same as \code{TRUE}, "hard" means the same as \code{NA}.

You can also specify dependencies from one or more additional fields,
common ones include:
\itemize{
\item Config/Needs/website - for dependencies used in building the pkgdown site.
\item Config/Needs/coverage for dependencies used in calculating test coverage.
}}

\item{upgrade}{Should package dependencies be upgraded? One of "default", "ask", "always", or "never". "default"
respects the value of the \code{R_REMOTES_UPGRADE} environment variable if set,
and falls back to "ask" if unset. "ask" prompts the user for which out of
date packages to upgrade. For non-interactive sessions "ask" is equivalent
to "always". \code{TRUE} and \code{FALSE} are also accepted and correspond to
"always" and "never" respectively.}

\item{force}{Deprecated, this argument has no effect.}

\item{quiet}{If \code{TRUE}, suppress output.}

\item{build}{If \code{TRUE} build the package before installing.}

\item{build_opts}{Options to pass to \verb{R CMD build}, only used when \code{build}}

\item{build_manual}{If \code{FALSE}, don't build PDF manual ('--no-manual').}

\item{build_vignettes}{If \code{FALSE}, don't build package vignettes ('--no-build-vignettes').
is \code{TRUE}.}

\item{repos}{A character vector giving repositories to use.}

\item{type}{Type of package to \code{update}.}

\item{...}{Other arguments passed on to \code{\link[utils:install.packages]{utils::install.packages()}}.}
}
\description{
Works similarly to \code{\link[utils:install.packages]{utils::install.packages()}} but doesn't install packages
that are already installed, and also upgrades out dated dependencies.
}
\examples{
\dontrun{
update_packages("ggplot2")
update_packages(c("plyr", "ggplot2"))
}
}
\seealso{
\code{\link[=package_deps]{package_deps()}} to see which packages are out of date/
missing.
}
