# breakpoint-detection

**Breakpoint detection with JS, using an inserted element which has it's `z-index` changed depending on the page width.**

When the `breakpoint-detection.coffee` file is executed, it inserts an element into the page.  The script will then monitor window resizing, and when the window has been resized it will interogate the `z-index` value of the inserted element.  If a change in `z-index` has occured, any callback functions regestered will be notified of the current z-index value.

I've found that using jQuery plugins in combination with the breakpoint detection script is a nice way of handling interface JS on responsive sites.  What makes using jQuery plugins very clean, is that you can easily implement a 'destroy' function.  Quite often on a responsive site, interface JS elements will only be valid on either large width, or on small widths.  Being able to call a 'destroy' function is a way of cleaning up any JS inserted artifacts when pages resize.

## How to use

1. Add `breakpoint-detection.min.js` to page.
2. Add `breakpoint-element.scss` to your stylesheets, and modify breakpoints to suit your needs.
3. I reccommend using a jQuery plugin to encapsulate your JS functionality.
4. Add `application.js`, and modify to suit your needs.

### Default page width and positive/negative breakpoints



### Versions

1.0.0 - Initial version.<br />
1.0.1 - Added `position: relative` to breakpoint element, as some browsers require it.
