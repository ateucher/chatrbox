#' chatrbox
#'
#' Send a prompt to the ChatGPT in the form "Write
#' \{format\} about \{topic\} in the style of \{style\}."
#'
#' By default, `format`, `topic`, and `style` are randomly
#' chosen from a list, but you can choose them yourself.
#'
#' @param format the format of the response
#' @param topic the topic of the response
#' @param style the style of the response
#'
#' @return ChatGPT output. The prompt that was submitted is saved in an attribute.
#' @export
chatrbox <- function(format = pick_format(),
                     topic = pick_topic(),
                     style = pick_style()) {

  prompt <- glue::glue("Write {format} about {topic} in the style of {style}.")

  if (interactive()) {
    msg <- glue::glue("Your prompt is {usethis::ui_value(prompt)}.
          Would you like to send it to ChatGPT?")

    if (!usethis::ui_yeah(msg)) {
      usethis::ui_line("OK, try again with another prompt!")
      return(invisible())
    }
  }

  res <- chatgpt::ask_chatgpt(prompt)

  as.chatgpt_response(res, prompt)
}

pick_format <- function(formats = c(
  "a love letter",
  "a sonnet",
  "an opening paragraph of a newspaper article",
  "a tweet",
  "a haiku")) {
  pick(formats)
}

pick_topic <- function(topics = c(
  "GitHub pull request reviews",
  "R programming",
  "GitHub Issues",
  "software licensing",
  "checklists",
  "R package dependency management",
  "spring cleaning",
  "code refactoring",
  "software codes of conduct",
  "the usethis R package",
  "a reprex",
  "restarting your R session")) {
  pick(topics)
}

pick_style <- function(topics = c(
  "Shakespeare",
  "Bob Dylan",
  "Jane Austen",
  "Roald Dahl",
  "a sports commentator",
  "a standup comedian",
  "a pirate",
  "a southern grandmother",
  "a valley girl",
  "Eminem",
  "a cowboy",
  "a yoga instructor",
  "Werner Herzog")) {
  pick(topics)
}

pick <- function(x) sample(x, 1)

as.chatgpt_response <- function(x, prompt) {
  attr(x, "prompt") <- prompt
  class(x) <- "chatgpt_response"
  x
}

#' @export
print.chatgpt_response <- function(x, ...) {
  x <- strsplit(x, "\\n")[[1]]
  cli::cat_boxx(
    cli::ansi_strwrap(x, width = cli::console_width() - 10),
    border_col = "darkred"
  )
}
