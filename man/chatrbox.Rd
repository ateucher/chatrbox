% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chatrbox.R
\name{chatrbox}
\alias{chatrbox}
\title{chatrbox}
\usage{
chatrbox(format = pick_format(), topic = pick_topic(), style = pick_style())
}
\arguments{
\item{format}{the format of the response}

\item{topic}{the topic of the response}

\item{style}{the style of the response}
}
\value{
ChatGPT output. The prompt that was submitted is saved in an attribute.
}
\description{
Send a prompt to the ChatGPT in the form "Write
\{format\} about \{topic\} in the style of \{style\}."
}
\details{
By default, \code{format}, \code{topic}, and \code{style} are randomly
chosen from a list, but you can choose them yourself.
}
