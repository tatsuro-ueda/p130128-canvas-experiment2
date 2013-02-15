# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class AppViewModel
  constructor: ->
    @fileName  = ko.observable "Hoge"
    @sources = []

$ ->
  v = new AppViewModel
  $.getJSON(
    '/images/eight_by_eight.json'
  ).done((data) ->
    for d in data
      v.sources.push '/assets/' + d.path

    ko.applyBindings v
  )
  $('#button')
    .on 'click', ->
      simg = new ScrambledImage031 v.fileName()
      simg.shuffleMatrix =
        [
          [ 1,  3,  4, 13, 16, 18, 20, 22]
          [ 2,  0,  5, 14, 17, 19, 21, 23]
          [ 6,  7,  8, 15, 24, 28, 32, 36]
          [ 9, 10, 11, 12, 26, 30, 34, 38]
          [25, 29, 33, 37, 41, 45, 49, 53]
          [27, 31, 35, 39, 43, 47, 51, 55]
          [42, 46, 50, 54, 58, 62, 57, 40]
          [44, 48, 52, 56, 60, 63, 61, 59]
        ]
      simg.id = 'hoge'
      simg.paint()