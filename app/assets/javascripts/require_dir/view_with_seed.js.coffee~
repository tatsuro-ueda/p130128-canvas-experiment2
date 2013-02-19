# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

root = exports ? this
class root.ViewWithSeedViewModel
  constructor: ->
    @fileName  = ko.observable "Hoge"
    @sources = []
    @isDecoded = ko.observable false
    ko.computed =>
      simg = new ScrambledImage040 @fileName()
      simg.seed = 'todo'
      simg.height = 8
      simg.width = 6
#      if @isDecoded()
      simg.id = 'original'
      simg.paint()
  getFileNames: ->
    $.getJSON(
      '/images/eight_by_eight.json'
    ).done((data) =>
      for d in data
        @sources.push '/assets/' + d.path
    )