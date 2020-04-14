HTMLWidgets.widget({

  name: 'rough_scatter',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        new roughViz.Scatter({
          element: '#' + el.id,
          data : x.data,
          axisFontSize : x.axisFontSize,
          axisRoughness : x.axisRoughness,
          axisStrokeWidth : x.axisStrokeWidth,
          bowing : x.bowing,
          color : x.color,
          colorvar : x.colorvar,
          curbZero : x.curbZero,
          fillStyle : x.fillStyle,
          fillWeight : x.fillWeight,
          font : x.font,
          highlight : x.highlight,
          highlightLabel : x.highlightLabel,
          innerStrokeWidth : x.innerStrokeWidth,
          interactive : x.interactive,
          labelFontSize : x.labelFontSize,
          radius : x.radius,
          roughness : x.roughness,
          simplification : x.simplification,
          stroke : x.stroke,
          strokeWidth : x.strokeWidth,
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
