root = exports ? this
class root.ViewWithPassViewModel
  constructor: ->
    @password = ko.observable ''
    ko.computed =>
      simg = new ScrambledImage042 "/assets/image62.png"
      simg.seed = @password()
      simg.height = 16
      simg.width = simg.height * 3 / 4
      simg.canvasId = 'view_with_pass'
      simg.fix()
      simg.paint()