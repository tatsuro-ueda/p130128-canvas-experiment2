root = exports ? this
class root.ScrambledImage03
  fileName = null
  shuffleMatrix = []
  context = null
  canvas = null
  ###
  WidthPartitionNum
  HeightPartitionNum
  ###
  w = null
  h = null

  ###
  TODO: write exception when w * h isnt sizeof shuffleMatrix
  ###
  constructor: (fileName, shuffleMatrix) ->
    @fileName = fileName
    @h = shuffleMatrix.length
    # console.log @h
    @w = shuffleMatrix[0].length
    # console.log @w
    @shuffleMatrix = shuffleMatrix

  paint: ->
    image = new Image
    image.src = @fileName
    $(image)
      .on 'load', =>
        canvas = $('canvas')[0]
        context = canvas.getContext "2d"
        canvas.height = image.height
        canvas.width = image.width
        context.drawImage image, 0, 0

        imageData = []
        getCellImageData = (m, n) =>
          context.getImageData(
            (canvas.width / @w) * n,
            (canvas.height / @h) * m,
            canvas.width / @w,
            canvas.height / @h
          )

        for i in [0...@w]
          imageData[i] = []
          for j in [0...@h]
            imageData[i].push(getCellImageData i, j)

        for i in [0...@w]
          for j in [0...@h]
            context.putImageData(
              imageData[i][j],
              (canvas.width / @w) * (@shuffleMatrix[i][j] % @w),
              (canvas.height / @h) * Math.floor(@shuffleMatrix[i][j] / @h)
            )