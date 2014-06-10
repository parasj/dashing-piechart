class Dashing.Pie extends Dashing.Widget
  @accessor 'value'
 
  onData: (data) ->
    @render(data.value)
  
  render: (data) ->
    $(@node).children("svg").remove()	
    # $(@node).css("overflow", "hidden")

    if(!data)
      data = @get("value")
    if(!data)
        return

    width = 255
    height = 255

    nv.addGraph (->
      chart = nv.models.pieChart()
      .x((d) -> d.label )
      .y((d) -> d.value )
      .showLabels(true)
      .showLegend(false)
      .width(width)
      .height(height)
      
      d3.select(@node)
      .append("svg:svg")
      .data([data])
      .call chart
      
      chart
    ).bind(this)
    
    $(@node).children("svg").height(height)	
    $(@node).children("svg").width(width)	