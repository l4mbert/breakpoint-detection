$ ->

  $.widget 'primate.example_plugin', {

    options:
      js_enabled: 'js_enabled'

    # Plugin wide variables
    $container: ''

    ##
    # PUBLIC METHODS
    ##
    _init: () ->

      options = this.options
      this.$container = $container = $(this.element)

      # Add JS enbaled class to container
      $container.addClass options.js_enabled

      # Call to method
      this._doSomeWork()

    # Use destroy to remove the plugin, and clean up after itself.
    _destroy: () ->

      options = this.options

      this.$container.removeClass options.js_enabled

      this.$container.css 'background-color', 'transparent'


    ##
    # PRIVATE METHODS
    ##
    _setOptions: (name, value) ->
      $.Widget.prototype._setOption.apply(this, arguments)

    _doSomeWork: () ->

      that = this
      options = this.options

      # Using plugin scope with 'that' within nested function
      nestedFunction = () ->
        that.$container.css 'background-color', 'pink'

      # Calling another plugin function
      this._anotherFunction()

    _anotherFunction: () ->

      console.log 'Hello world'

  }

(jQuery)
