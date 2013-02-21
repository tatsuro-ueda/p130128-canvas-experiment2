# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

root = exports ? this
class root.ViewWithSeedViewModel
  constructor: ->
    @isDecoded = ko.observable false
    @encryptedKey = sjcl.encrypt("todo", "hirakegoma")
    @personalPassword = ko.observable ''
    @decryptedPassword = ko.computed =>
      if @personalPassword() isnt ''
        sjcl.decrypt @personalPassword(), @encryptedKey
      else
        return ''
    @decodePassword = ko.observable ''
    @isDecoded = ko.observable false
    ko.computed =>
      simg = new ScrambledImage040 "/assets/image61.png"
      simg.height = 16
      simg.width = simg.height * 3 / 4
      if @isDecoded()
        simg.seed = @decodePassword()
        simg.isDecode = true
      simg.id = 'original'
      simg.paint()
  # decryptKey: ->
  #   @decryptedPassword = sjcl.decrypt @personalPassword(), @encryptedKey
  #   console.log @decryptedPassword