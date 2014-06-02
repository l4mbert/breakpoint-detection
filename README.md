# breakpoint-detection

**Breakpoint detection within Javascript.  Uses an inserted element which has it's `z-index` changed depending on the page width.**

The breakpoint detection script works in tandem with your stylesheets.  The script inserts an empty `<div>` which has the ID of 'breakpoint_element' into your page.  Your stylesheets define the z-index of that inserted element, the value being a representation of the page width.  The breakpoint detection script can then interrogate the z-index of the inserted element and ascertain the width of the page.

You can ask the breakpoint detection script for the current z-index value in the following way: `BreakpointDetection.getPageWidth()`.  Or you can add a callback function that is executed any time the value of z-index changes.  The callback function is passed the updated z-index value (page width) anytime a change occurs.

## How to use

### 1. Add breakpoint-detection.js to page

Unfortunately jQuery is currently required.  A future enhancement would be to remove the need for jQuery.

### 2. Add breakpoint-element.scss to your stylesheets, and modify breakpoints to suit your needs.

You must add the styles to your page, otherwise the breakpoint detection script won't work.  Tailer the break points values to suit your needs.

Recommendations:

* Use `em` values for your breakpoints.
* If you are using the non SASS version of the styles, please ensure that your z-index values are plain integers.  In other words with `em`, `px`, or `%`.


### 3. Add application.js, and modify to suit your needs

The code within application.js provides an example of how you may use the breakpoint detection script.  It shows the page width on load being used on to conditional instantiate a jQuery plugin.  It also shows a callback being added which destroys/instantiates a jQuery plugin if the page width changes.

## Recomendations

### Use a jQuery plugin to encapsulate your JS functionality.

If you are enabling Javascript functionality based page width, generally you will want to also assign callback functions which capture page width changes.  Page width may change when a browser is resized, or if a device orientation is changed.  You may need to enable or disable functionality based on the updated page width.  For example, a drop down mobile navigation may be appropriate when an iPad is orientated portrait, but not when it's landscape.

### Default page width and positive/negative breakpoints



### Versions

1.0.0 - Initial version.<br />
1.0.1 - Added `position: relative` to breakpoint element, as some browsers require it.
