$(function() {
  return $.widget('primate.example_plugin', {
    options: {
      js_enabled: 'js_enabled'
    },
    $container: '',
    _init: function() {
      var $container, options;
      options = this.options;
      this.$container = $container = $(this.element);
      $container.addClass(options.js_enabled);
      return this._doSomeWork();
    },
    _destroy: function() {
      var options;
      options = this.options;
      this.$container.removeClass(options.js_enabled);
      return this.$container.css('background-color', 'transparent');
    },
    _setOptions: function(name, value) {
      return $.Widget.prototype._setOption.apply(this, arguments);
    },
    _doSomeWork: function() {
      var nestedFunction, options, that;
      that = this;
      options = this.options;
      nestedFunction = function() {
        return that.$container.css('background-color', 'pink');
      };
      return this._anotherFunction();
    },
    _anotherFunction: function() {
      return console.log('Hello world');
    }
  });
});

jQuery;
