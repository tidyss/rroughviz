#'rough_stackedbar
#'
#'rough_stackedbar
#'
#'@rdname rough_bar
#'@importFrom jsonlite toJSON
#'@export
rough_stackedbar <- function(data,
                             labels,
                             axisFontSize = '1rem',
                             axisRoughness = 0.5,
                             axisStrokeWidth = 0.5,
                             bowing = 0,
                             colors = NULL,
                             fillStyle = NULL,
                             fillWeight = 0.5,
                             font = 0,
                             highlight = 'coral',
                             innerStrokeWidth = 1,
                             interactive = TRUE,
                             labelFontSize = '1rem',
                             padding = 0.1,
                             roughness = 1,
                             simplification = 0.2,
                             stroke = 'black',
                             strokeWidth = 1,
                             title = NULL,
                             titleFontSize = '1rem',
                             tooltipFontSize = '0.95rem',
                             xLabel = NULL,
                             yLabel = NULL,
                             width = NULL, height = NULL, elementId = NULL) {
  data <- toJSON(data)
  fillStyle <- match.arg(
    arg = fillStyle,
    choices = c('hachure','cross-hatch','zigzag','dashed','solid','zigzag-line')
  )
  # forward options using x
  x = list(
    data = data,
    labels = labels,
    axisFontSize = axisFontSize,
    axisRoughness = axisRoughness,
    axisStrokeWidth = axisStrokeWidth,
    bowing = bowing,
    colors = colors,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    highlight = highlight,
    innerStrokeWidth = innerStrokeWidth,
    interactive = interactive,
    labelFontSize = labelFontSize,
    padding = padding,
    roughness = roughness,
    simplification = simplification,
    stroke = stroke,
    strokeWidth = strokeWidth,
    title = title,
    titleFontSize = titleFontSize,
    tooltipFontSize = tooltipFontSize,
    xLabel = xLabel,
    yLabel = yLabel
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rough_stackedbar',
    x,
    width = width,
    height = height,
    package = 'rroughviz',
    elementId = elementId
  )
}
#' @export
roughstackedbarOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'rough_stackedbar', width, height, package = 'rroughviz')
}


#' @export
renderroughstackedbar<- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, roughstackedbarOutput, env, quoted = TRUE)
}
