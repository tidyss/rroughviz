#'rough_scatter
#'
#'rough_scatter
#'
#'@rdname rough_bar
#'
#'@export
rough_scatter <- function(x,
                          y,
                          axisFontSize = '1rem',
                          axisRoughness = 0.5,
                          axisStrokeWidth = 0.5,
                          bowing = 0,
                          color = 'blue',
                          colorvar = NULL,
                          curbZero = FALSE,
                          fillStyle = 'hachure',
                          fillWeight = 0.5,
                          font = 'Gaegu',
                          highlight = 'coral',
                          highlightLabel = NULL,
                          innerStrokeWidth = 1,
                          interactive = TRUE,
                          labelFontSize = '1rem',
                          radius = 8,
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

  data <- list(
    x = x,
    y = y
  )
  fillStyle <- match.arg(
    arg = fillStyle,
    choices = c('hachure','cross-hatch','zigzag','dashed','solid','zigzag-line')
  )
  x = list(
    data = data,
    axisFontSize = axisFontSize,
    axisRoughness = axisRoughness,
    axisStrokeWidth = axisStrokeWidth,
    bowing = bowing,
    color = color,
    colorvar = colorvar,
    curbZero = curbZero,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    highlight = highlight,
    highlightLabel = highlightLabel,
    innerStrokeWidth = innerStrokeWidth,
    interactive = interactive,
    labelFontSize = labelFontSize,
    radius = radius,
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
    name = 'rough_scatter',
    x,
    width = width,
    height = height,
    package = 'rroughviz',
    elementId = elementId
  )
}
#' @export
roughscatterOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'rough_scatter', width, height, package = 'rroughviz')
}


#' @export
renderroughscatter<- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, roughscatterOutput, env, quoted = TRUE)
}
