# Add bulma dependencies to a tag object
add_bulma_deps <- function(tag, theme) {
  
  # bulma
  bulma_css <- "https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/"
  # fontawesome
  fontawesome_css <- "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/"
  # bulma extensions
  bulma_extensions_css <- "bulma-extensions.min.css"
  bulma_extensions_js <- "bulma-extensions.min.js"
  # others
  bulma_themes_css <- paste0(tolower(theme), ".min.css")
  jquery_ui_js <- "jquery-ui.min.js"
  custom_js <- "custom-js.js"

  # bulmaJS extensions https://bulmajs.tomerbe.co.uk/docs/master/1-getting-started/2-installation/
  bulma_js <- "bulma.js"
  
  bulmaDeps <- list(
    # bulma CSS (CDN)
    htmltools::htmlDependency(
      name = "bulma", 
      version = as.character(utils::packageVersion("RSshinybulma")),
      src = c(href = bulma_css),
      stylesheet = "bulma.min.css"
    ),
    # bulma extensions (from http://bulma.io/extensions/)
    htmltools::htmlDependency(
      name = "bulma-extensions", 
      version = "3.0.0",
      src = c(file = system.file("bulma-extensions-3.0.0", package = "RSshinybulma")),
      script = bulma_extensions_js,
      stylesheet = bulma_extensions_css
    ),
    # bulmaJS
    htmltools::htmlDependency(
      name = "bulmaJS", 
      version = "0.11",
      src = c(file = system.file("bulma-js-0.11", package = "RSshinybulma")),
      script = bulma_js
    ),
    # Themes
    if (!is.null(theme)) {
      htmltools::htmlDependency(
        name = "bulma-themes", 
        version = "0.7.2",
        src = c(file = system.file("bulma-themes-0.7.2", package = "RSshinybulma")),
        stylesheet = bulma_themes_css
      )
    },
    # jquery UI deps for sortable elements
    htmltools::htmlDependency(
      name = "jquery-ui", 
      version = "1.12.1",
      src = c(file = system.file("jquery-ui-1.12.1", package = "RSshinybulma")),
      script = jquery_ui_js
    ),
    # fontawesome CSS (CDN)
    htmltools::htmlDependency(
      name = "fontawesome",
      version = as.character(utils::packageVersion("RSshinybulma")),
      src = c(href = fontawesome_css),
      stylesheet = "all.min.css"
    ),
    # Custom js (inputs, ...)
    htmltools::htmlDependency(
      name = "js", 
      version = "0.7.2",
      src = c(file = system.file("js-0.7.2", package = "RSshinybulma")),
      script = list.files(system.file("js-0.7.2", package = "RSshinybulma"))
    )
  )
  htmltools::attachDependencies(tag, bulmaDeps, append = TRUE)
}