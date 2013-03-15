root = exports ? this
class root.ViewAfterKeyRecieveViewModel
  constructor: ->
    @isDecoded = ko.observable false
    @encryptedKey = ko.observable ''
    @personalPassword = ko.observable ''
    @decodePassword = ko.observable ''

    # do when @personalPassword is changed
    ko.computed =>
      if @personalPassword() isnt ''
        @decodePassword sjcl.decrypt(@personalPassword(), @encryptedKey())
      simg = new ScrambledImage044 "/assets/image61.png"
        height: 16
        width:  12
        canvasId: 'original'
        seed:   @decodePassword()
      simg.fix()
      simg.paint()

  createEncryptedKey: ->
    # create key and set to @encryptedKey
    @encryptedKey sjcl.encrypt("todo", "hirakegoma")
