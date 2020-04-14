HTMLWidgets.widget({

  name: 'rough_line',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        new roughViz.Line({
              element: '#' + el.id,
              data : x.data,
              y : x.y,
              axisFontSize : x.axisFontSize,
              axisRoughness : x.axisRoughness,
              axisStrokeWidth : x.axisStrokeWidth,
              bowing : x.bowing,
              circle : x.circle,
              circleRadius : x.circleRadius,
              circleRoughnes : x.circleRoughnes,
              color : x.color,
              fillStyle : x.fillStyle,
              fillWeight : x.fillWeight,
              font : x.font,
              interactive : x.interactive,
              labelFontSize : x.labelFontSize,
              legend : x.legend,
              legendPosition : x.legendPosition,
              roughness : x.roughness,
              simplification :  x.simplification,
              stroke : x.stroke,
              strokeWidth : x.strokeWidth ,
              title : x.title,
              titleFontSize : x.titleFontSize,
              tooltipFontSize : x.tooltipFontSize,
              xLabel : x.xLabel,
              yLabel : x.yLabel,
              height : height,
              width : width
            });

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
