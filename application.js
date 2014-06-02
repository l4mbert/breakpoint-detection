$(function() {
  var example_plugin_active, page_width_on_load;
  page_width_on_load = BreakpointDetection.getPageWidth();
  example_plugin_active = false;
  if (page_width_on_load < 50) {
    $('#element').example_plugin();
    example_plugin_active = true;
  }
  return BreakpointDetection.addCallback(function(page_width) {
    if ((page_width < 50) && (example_plugin_active !== true)) {
      $('#element').example_plugin();
      return example_plugin_active = true;
    } else if (page_width >= 50 && example_plugin_active) {
      $('#element').example_plugin('destroy');
      return example_plugin_active = false;
    }
  });
});
