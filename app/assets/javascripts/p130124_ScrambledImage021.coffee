root = exports ? this
class root.ScrambledImage021
  constructor: (fileName) ->
    @fileName = fileName

  paint: ->
    image = new Image
    image.src = @fileName
    $(image)
      .on 'load', ->
        canvas = $('canvas')[0]
        context = canvas.getContext "2d"
        canvas.height = image.height
        canvas.width = image.width
        context.drawImage image, 0, 0

        imageData00 = context.getImageData 0, 0, canvas.width / 2, canvas.height / 2
        imageData01 = context.getImageData canvas.width / 2, 0, canvas.width / 2, canvas.height / 2
        imageData10 = context.getImageData 0, canvas.height / 2, canvas.width / 2, canvas.height / 2
        imageData11 = context.getImageData canvas.width / 2, canvas.height / 2, canvas.width / 2, canvas.height / 2

        # context.putImageData imageData00, canvas.width / 2, 0
        # context.putImageData imageData01, canvas.width / 2, canvas.height / 2
        # context.putImageData imageData10, 0, 0
        # context.putImageData imageData11, 0, canvas.height / 2

        context.putImageData imageData00, 0, canvas.height / 2
        context.putImageData imageData10, canvas.width / 2, canvas.height / 2
        context.putImageData imageData01, 0, 0
        context.putImageData imageData11, canvas.width / 2, 0
