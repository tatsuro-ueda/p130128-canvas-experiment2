# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class AppViewModel
  constructor: ->
    @fileName  = ko.observable "Hoge"
    @sources = []
    @isDecoded = ko.observable false
    ko.computed =>
      simg = new ScrambledImage031 @fileName()
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
      else
        simg.shuffleMatrix =
          [
            [0,1,2,3,4,5,6,7]
            [8,9,10,11,12,13,14,15]
            [16,17,18,19,20,21,22,23]
            [24,25,26,27,28,29,30,31]
            [32,33,34,35,36,37,38,39]
            [40,41,42,43,44,45,46,47]
            [48,49,50,51,52,53,54,55]
            [56,57,58,59,60,61,62,63]
          ]
      simg.id = 'original'
      simg.paint()

$ ->
  v = new AppViewModel
  # $.getJSON(
  #   '/images/127.json'
  # ).done((data) ->
  #   # for d in data
  #     # v.sources.push '/assets/' + d.path
  #   v.fileName('/assets/' + data.path)

  #   ko.applyBindings v
  # )
  v.fileName('/assets/image51.png')
  ko.applyBindings v