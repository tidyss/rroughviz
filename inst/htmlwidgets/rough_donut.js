HTMLWidgets.widget({

  name: 'rough_donut',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        // TODO: code to render the widget, e.g.
        new roughViz[x.type]({
            element: '#' + el.id,
            data : x.data,
            bowing : x.bowing,
            color : x.color,
            fillStyle : x.fillStyle,
            fillWeight : x.fillWeight,
            font : x.font,
            highlight : x.highlight,
            innerStrokeWidth : x.innerStrokeWidth,
            interactive : x.interactive,
            legend : x.legend,
            legendPosition : x.legendPosition,
            padding : x.padding,
            roughness : x.roughness,
            simplification : x.simplification,
            stroke : x.stroke,
            strokeWidth : x.strokeWidth,
            title : x.title,
            titleFontSize : x.titleFontSize,
            tooltipFontSize : x.tooltipFontSize,
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
