#' Themes
#' 
#' List all available themes.
#' 
#' @details All themes are taken from \href{https://jenil.github.io/bulmaswatch/}{bulmaswatch}.
#' 
#' @author John Coene, \email{jcoenep@@gmail.com}
#' 
#' @export
bulma_themes <- function(){
  x <- c(
    "default", 
    "cerulean",
    "cyborg",
    "dark",
    "darkly",
    "flatly",
    "journal",
    "litera",
    "lumen",
    "lux",
    "materia",
    "minty",
    "nuclear",
    "pulse",
    "sandstone",
    "simplex",
    "slate",
    "solar",
    "spacelab",
    "united",
    "yeti",
    "plstk_bulma"
  )
  x[order(x)]
}