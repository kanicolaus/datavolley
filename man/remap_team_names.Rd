% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleaning_names.R
\name{remap_team_names}
\alias{remap_team_names}
\title{Change team names}
\usage{
remap_team_names(x, remap, fixed = TRUE)
}
\arguments{
\item{x}{datavolley: a datavolley object as returned by \code{read_dv}, or list of such objects}

\item{remap}{data.frame: data.frame of strings with columns \code{from} and \code{to}, and optionally \code{team_id}}

\item{fixed}{logical: treat the \code{to} and \code{from} entries as fixed string? (Treat as regexps if \code{fixed} is \code{FALSE})}
}
\value{
datavolley object or list with corresponding team names changed
}
\description{
A team name can sometimes be spelled incorrectly, particularly if there are character encoding issues. This can be a particular problem when combining data from multiple files. A team name matching the \code{from} entry in a row in \code{remap} is renamed to the corresponding \code{to} value. If the \code{remap} object also contains a \code{team_id} column, then a team name must match the \code{team_id} and \code{from} values to be changed to the corresponding \code{to} value.
}
\examples{
\dontrun{
  x <- read_dv(dv_example_file(), insert_technical_timeouts=FALSE)
  summary(x)

  ## rename a team based just on team name
  summary(remap_team_names(x, data.frame(from="Nova KBM Branik", to="NKBM Branik")))

  ## rename a team based on team name and ID
  summary(remap_team_names(x, data.frame(from="Nova KBM Branik", to="NKBM Branik", id="MB4")))
}
}
\seealso{
\code{\link{read_dv}}
}
