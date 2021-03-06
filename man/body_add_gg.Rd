% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docx_add.R
\name{body_add_gg}
\alias{body_add_gg}
\title{add ggplot}
\usage{
body_add_gg(x, value, width = 6, height = 5, style = NULL)
}
\arguments{
\item{x}{an rdocx object}

\item{value}{ggplot object}

\item{width}{height in inches}

\item{height}{height in inches}

\item{style}{paragraph style}
}
\description{
add a ggplot as a png image into an rdocx object
}
\examples{
library(ggplot2)

doc <- read_docx()

gg_plot <- ggplot(data = iris ) +
  geom_point(mapping = aes(Sepal.Length, Petal.Length))

doc <- body_add_gg(doc, value = gg_plot, style = "centered" )

print(doc, target = "body_add_gg.docx" )
}
