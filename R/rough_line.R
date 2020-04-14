#'rough_line
#'
#'rough_line
#'
#'@rdname rough_bar
#'
#'@export
rough_line <- function(data,
                       y,
                       axisFontSize = '1rem',
                       axisRoughness = 0.5,
                       axisStrokeWidth = 0.5,
                       bowing = 0,
                       circle = TRUE,
                       circleRadius = 10,
                       circleRoughnes = 2,
                       color = 'blue',
                       fillStyle = 'hachure',
                       fillWeight = 0.5,
                       font = 'Gaegu',
                       interactive = TRUE,
                       labelFontSize = '1rem',
                       legend = TRUE,
                       legendPosition = 'right',
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
  # forward options using x
  fillStyle <- match.arg(
    arg = fillStyle,
    choices = c('hachure','cross-hatch','zigzag','dashed','solid','zigzag-line')
  )
  x = list(
    data = data,
    y = '',
    axisFontSize = axisFontSize,
    axisRoughness = axisRoughness,
    axisStrokeWidth = axisStrokeWidth,
    bowing = bowing,
    circle = circle,
    circleRadius = circleRadius,
    circleRoughnes = circleRoughnes,
    color = color,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    interactive = interactive,
    labelFontSize = labelFontSize,
    legend = legend,
    legendPosition = legendPosition,
    roughness = roughness,
    simplification =  simplification,
    stroke = stroke,
    strokeWidth = strokeWidth ,
    title = title,
    titleFontSize = titleFontSize,
    tooltipFontSize = tooltipFontSize,
    xLabel = xLabel,
    yLabel = yLabel
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rough_line',
    x,
    width = width,
    height = height,
    package = 'rroughviz',
    elementId = elementId
  )
}
#' @export
roughlineOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'rough_line', width, height, package = 'rroughviz')
}


#' @export
renderroughline<- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, roughlineOutput, env, quoted = TRUE)
}
