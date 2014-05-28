$ ->

  #  Page width on load
  page_width_on_load = BreakpointDetection.getPageWidth()

  # Enable and disable plugin based on page width
  example_plugin_active = false

  if page_width_on_load < 50
    $('#element').example_plugin()
    example_plugin_active = true

  BreakpointDetection.addCallback (page_width) ->

    if (page_width < 50) and (example_plugin_active isnt true)
      $('#element').example_plugin()
      example_plugin_active = true

    else if page_width >= 50 and example_plugin_active
      $('#element').example_plugin 'destroy'
      example_plugin_active = false
