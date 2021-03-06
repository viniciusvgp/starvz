% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phase2_memory.R
\name{panel_handles}
\alias{panel_handles}
\title{Create a space time visualization of data handles}
\usage{
panel_handles(data, JobId = NA, lines = NA, lHandle = NA)
}
\arguments{
\item{data}{starvz_data with trace data}

\item{JobId}{Select handles of jobid}

\item{lines}{vertical lines}

\item{lHandle}{select handles}
}
\value{
A ggplot object
}
\description{
Visualizate data handles movement
To accelerate the process:\preformatted{
data$handle_states <- handles_presence_states(data)
data$handle_gantt_data <- pre_handle_gantt(data)
To Select time:
handles_gantt(data, JobId=c(jobid))
snap_data <- pre_snap(data, data$handle_states)
memory_snap(snap_data, 1000, tasks_size=200, step=1)}
}
\examples{
\donttest{
panel_handles(data = starvz_sample_lu)
}
}
