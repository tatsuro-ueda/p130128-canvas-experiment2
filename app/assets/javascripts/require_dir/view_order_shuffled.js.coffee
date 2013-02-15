# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

root = exports ? this
class root.ViewOrderShuffledViewModel
  constructor: ->
    @fileName  = ko.observable "Hoge"
    @sources = []
    @isDecoded = ko.observable false
    ko.computed =>
      simg = new ScrambledImage032 @fileName()
      if @isDecoded()
        simg.shuffleMatrix =
          [
            [9,0,8,1,2,10,16,17]
            [18,24,25,26,27,3,11,19]
            [4,12,5,13,6,14,7,15]
            [20,32,28,40,21,33,29,41]
            [22,34,30,42,23,35,31,43]
            [55,36,48,44,56,37,49,45]
            [57,38,50,46,58,39,51,47]
            [59,54,52,63,60,62,53,61]
          ]
      simg.id = 'original'
      simg.paint()
  getFileNames: ->
    $.getJSON(
      '/images/eight_by_eight_shuffled.json'
    ).done((data) =>
      for d in data
        @sources.push '/assets/' + d.path
    )


$ ->
  v = new ViewOrderShuffledViewModel
  v.getFileNames()
  .done ->
    ko.applyBindings v