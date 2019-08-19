
mmstyle <- function() {

  mmstyle <- grkstyle::grk_style_transformer()

  ## Remove setting of newlines on inside of '{' and '}' to 1.
  mmstyle$line_break$style_line_break_around_curly <- NULL

  mmstyle

}

##' Style a file
##'
##' style a file with my variant of styler::tidyverse_style()
##'
##' @title style a file
##' @return nothing modifies file as side effect.
##' @author Miles McBain
##' @export
style_file <- function(path) {

  styler::style_file(
    path = path,
    style = mmstyle
  )

}
