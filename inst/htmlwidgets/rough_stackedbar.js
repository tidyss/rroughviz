HTMLWidgets.widget({

  name: 'rough_stackedbar',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        new roughViz.StackedBar({
          element: '#' + el.id,
          data : x.data,
          labels : x.labels,
          axisFontSize : x.axisFontSize,
          axisRoughness : x.axisRoughness,
          axisStrokeWidth : x.axisStrokeWidth,
          bowing : x.bowing,
          colors : x.colors,
          fillStyle : x.fillStyle,
          fillWeight : x.fillWeight,
          font : x.font,
          highlight : x.highlight,
          innerStrokeWidth : x.innerStrokeWidth,
          interactive : x.interactive,
          labelFontSize : x.labelFontSize,
          padding : x.padding,
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
