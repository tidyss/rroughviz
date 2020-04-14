#'rough_donut
#'
#'rough_donut
#'
#'@rdname rough_bar
#'
#'@export
rough_donut <- function(data = NULL,
                        labels = NULL,
                        values = NULL,
                        bowing = 0,
                        color = 'skyblue',
                        fillStyle = 'hachure',
                        fillWeight = 0.5,
                        font = 'Gaegu',
                        highlight = 'coral',
                        innerStrokeWidth = 1,
                        interactive = TRUE,
                        legend = TRUE,
                        legendPosition = 'right',
                        padding = 0.1,
                        roughness = 1,
                        simplification = 0.2,
                        stroke = 'black',
                        strokeWidth = 1,
                        title = NULL,
                        titleFontSize = '1rem',
                        tooltipFontSize = '0.95rem',
                        type = 'Donut',
                        width = NULL, height = NULL, elementId = NULL) {
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
  fillStyle <- match.arg(
    arg = fillStyle,
    choices = c('hachure','cross-hatch','zigzag','dashed','solid','zigzag-line')
  )
  # forward options using x
  x = list(
    data = data,
    bowing = bowing,
    color = color,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    highlight = highlight,
    innerStrokeWidth = innerStrokeWidth,
    interactive = interactive,
    legend = legend,
    legendPosition = legendPosition,
    padding = padding,
    roughness = roughness,
    simplification = simplification,
    stroke = stroke,
    strokeWidth = strokeWidth,
    title = title,
    titleFontSize = titleFontSize,
    tooltipFontSize = tooltipFontSize,
    type = type
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rough_donut',
    x,
    width = width,
    height = height,
    package = 'rroughviz',
    elementId = elementId
  )
}
#'rough_pie
#'
#'rough_pie
#'
#'@rdname rough_bar
#'
#'@export
rough_pie <- function(data = NULL,
                      labels = NULL,
                      values = NULL,
                      bowing = 0,
                      color = 'skyblue',
                      fillStyle = 'hachure',
                      fillWeight = 0.85,
                      font = 'Gaegu',
                      highlight = 'coral',
                      innerStrokeWidth = 0.75,
                      interactive = TRUE,
                      legend = TRUE,
                      legendPosition = 'right',
                      padding = 0.1,
                      roughness = 1,
                      simplification = 0.2,
                      stroke = 'black',
                      strokeWidth = 1,
                      title = NULL,
                      titleFontSize = '1rem',
                      tooltipFontSize = '0.95rem',
                      type = 'Pie') {
  rough_pie <- rough_donut(
    data = data,
    labels = labels,
    values = values,
    bowing = bowing,
    color = color,
    fillStyle = fillStyle,
    fillWeight = fillWeight,
    font = font,
    highlight = highlight,
    innerStrokeWidth = innerStrokeWidth,
    interactive = interactive,
    legend = legend,
    legendPosition = legendPosition,
    padding = padding,
    roughness = roughness,
    simplification = simplification,
    stroke = stroke,
    strokeWidth = strokeWidth,
    title = title,
    titleFontSize = titleFontSize,
    tooltipFontSize = tooltipFontSize,
    type = type
  )
  return(rough_pie)
}

