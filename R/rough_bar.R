#' rough_bar
#'
#' rough_bar
#'
#' @param data in bar barh donut pie is a categorical variable.in stackedbar is a dataframe class
#' @param labels labels
#' @param values values
#' @param axisFontSize : Font-size for axes' labels. Default: '1rem'.
#' @param axisRoughness : Roughness for x & y axes. Default: 0.5.
#' @param axisStrokeWidth : Stroke-width for x & y axes. Default: 0.5.
#' @param bowing : Chart bowing. Default: 0.
#' @param color : Color for each bar. Default: 'skyblue'.
#' @param fillStyle : Bar fill-style. Should be one of fillStyles shown above.
#' @param fillWeight : Weight of inner paths' color. Default: 0.5.
#' @param font: Font-family to use. You can use 0 or gaegu to use Gaegu, or 1 or indie flower to use Indie Flower. Or feed it something else. Default: Gaegu.
#' @param highlight : Color for each bar on hover. Default: 'coral'.
#' @param innerStrokeWidth : Stroke-width for paths inside bars. Default: 1.
#' @param interactive : Whether or not chart is interactive. Default: true.
#' @param labelFontSize : Font-size for axes' labels. Default: '1rem'.
#' @param padding : Padding between bars. Default: 0.1.
#' @param roughness : Roughness level of chart. Default: 1.
#' @param simplification : Chart simplification. Default 0.2.
#' @param stroke : Color of bars' stroke. Default: black.
#' @param strokeWidth : Size of bars' stroke. Default: 1.
#' @param title : Chart title. Optional.
#' @param titleFontSize : Font-size for chart title. Default: '1rem'.
#' @param tooltipFontSize : Font-size for tooltip. Default: '0.95rem'.
#' @param xLabel : Label for x-axis.
#' @param yLabel : Label for y-axis.
#' @param circle : Whether or not to add circles to chart. Default: true.
#' @param circleRadius : Radius of circles. Default: 10.
#' @param circleRoughness : Roughness of circles. Default: 2.
#' @param legend : Whether or not to add legend. Default: true.
#' @param legendPosition : Position of legend. Should be either 'left' or 'right'. Default: 'right'.
#' @param highlightLabel : If input data is csv or tsv, this should be a column representing what value to display on hover. Otherwise, (x, y) values will be shown on hover.
#' @param colorVar : If input data is csv or tsv, this should be an ordinal column with which to color points by.
#' @param burbZero : Whether or not to force (x, y) axes to (0, 0). Default: false.
#' @param radius : Circle radius. Default: 8.
#'
#' @export
rough_bar <- function(data = NULL,
                      labels = NULL,
                      values = NULL,
                      axisFontSize = '1rem',
                      axisRoughness = 0.5,
                      axisStrokeWidth = 0.5,
                      bowing = 0,
                      color = 'skyblue',
                      fillStyle = 'hachure',
                      fillWeight = 0.5,
                      font = 'Gaegu',
                      highlight = 'coral',
                      innerStrokeWidth = 1,
                      interactive = TRUE,
                      labelFontSize = '1rem',
                      legend = '',
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
                      type = 'Bar',
                      width = NULL, height = NULL, elementId = NULL) {
  #margin <- list(
  #       top = 50,
  #       right = 20,
  #       bottom = 70,
  #       left = 100
  #   )
  #margin <- toJSON(margin)
  fillStyle <- match.arg(
    arg = fillStyle,
    choices = c('hachure','cross-hatch','zigzag','dashed','solid','zigzag-line')
  )
  if (!is.null(data)) {
    data <- as.factor(data)
    data <- table(data)
    labels = names(data)
    values = as.numeric(data)
    data <- list(
      labels = labels,
      values = values
    )
  }else{
    data <- list(
      labels = labels,
      values = values
    )
  }
  # forward options using x
  x = list(
    data = data,
    axisFontSize = axisFontSize,
    axisRoughness = axisRoughness,
    axisStrokeWidth = axisStrokeWidth,
    bowing = bowing,
    color = color,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    highlight = highlight,
    innerStrokeWidth = innerStrokeWidth,
    interactive = interactive,
    labelFontSize = labelFontSize,
    legend = legend,
    padding = padding,
    roughness = roughness,
    simplification = simplification,
    stroke = stroke,
    strokeWidth = strokeWidth,
    title = title,
    titleFontSize = titleFontSize,
    tooltipFontSize = tooltipFontSize,
    xLabel = xLabel,
    yLabel = yLabel,
    type = type
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rough_bar',
    x,
    width = width,
    height = height,
    package = 'rroughviz',
    elementId = elementId,

  )
}

#'rough_barh
#'
#'rough_barh
#'
#'@rdname rough_bar
#'
#'@export
rough_barh <- function(data = NULL,
                       labels = NULL,
                       values = NULL,
                       axisFontSize = '1rem',
                       axisRoughness = 0.5,
                       axisStrokeWidth = 0.5,
                       bowing = 0,
                       color = 'skyblue',
                       fillStyle = 'hachure',
                       fillWeight = 0.5,
                       font = 'Gaegu',
                       highlight = 'coral',
                       innerStrokeWidth = 1,
                       interactive = TRUE,
                       labelFontSize = '1rem',
                       legend = '',
                       padding = 0.1,
                       roughness = 1,
                       simplification = 0.2,
                       stroke = 'black',
                       strokeWidth = 1,
                       title = NULL,
                       titleFontSize = '1rem',
                       tooltipFontSize = '0.95rem',
                       xLabel = NULL,
                       yLabel = NULL) {
  rough_barh <- rough_bar(data = data,
                          labels = labels,
                          values = values,
                          axisFontSize = axisFontSize,
                          axisRoughness = axisRoughness,
                          axisStrokeWidth = axisStrokeWidth,
                          bowing = bowing,
                          color = color,
                          fillStyle = fillStyle,
                          fillWeight = fillWeight,
                          font = font,
                          highlight = highlight,
                          innerStrokeWidth = innerStrokeWidth,
                          interactive = interactive,
                          labelFontSize = labelFontSize,
                          legend = legend,
                          padding = padding,
                          roughness = roughness,
                          simplification = simplification,
                          stroke = stroke,
                          strokeWidth = strokeWidth,
                          title = title,
                          titleFontSize = titleFontSize,
                          tooltipFontSize = tooltipFontSize,
                          xLabel = xLabel,
                          yLabel = yLabel,
                          type = 'BarH')
  return(rough_barh)
}
#' Shiny bindings for rough_bar
#'
#' Output and render functions for using rough_bar within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a rough_bar
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name rough-shiny
#'
#' @export
roughOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'rough_bar', width, height, package = 'rroughviz')
}

#' @rdname rough-shiny
#' @export
renderRough <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, roughOutput, env, quoted = TRUE)
}
