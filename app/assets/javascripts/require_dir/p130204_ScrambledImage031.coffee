root = exports ? this
class root.ScrambledImage031
  fileName = null
  shuffleMatrix = []
  context = null
  canvas = null
  id = null
  ###
  WidthPartitionNum
  HeightPartitionNum
  ###
  w = null
  h = null

  ###
  TODO: write exception when w * h isnt sizeof shuffleMatrix
  ###
  constructor: (fileName) ->
    @fileName = fileName

  paint: ->
    @h = @shuffleMatrix.length
    @w = @shuffleMatrix[0].length

    image = new Image
    image.src = @fileName
    $(image)
      .on 'load', =>

        ###
        canvas finding and initialization
        ###
        if @id?
          canvas = $('canvas#' + @id)[0]
        else
          canvas = $('canvas')[0]
        context = canvas.getContext "2d"
        canvas.height = image.height
        canvas.width = image.width
        context.drawImage image, 0, 0

        ###
        prepare getting image cell data
        ###
        imageData = []
        getCellImageData = (m, n) =>
          context.getImageData(
            (canvas.width / @w) * n,
            (canvas.height / @h) * m,
            canvas.width / @w,
            canvas.height / @h
          )

        ###
        get image cell data
        ###
        for i in [0...@w]
          imageData[i] = []
          for j in [0...@h]
            imageData[i].push(getCellImageData i, j)

        ###
        put image cell data with shuffle matrix
        ###
        for i in [0...@w]
          for j in [0...@h]
            context.putImageData(
              imageData[i][j],
              (canvas.width / @w) * (@shuffleMatrix[i][j] % @w),
              (canvas.height / @h) * Math.floor(@shuffleMatrix[i][j] / @h)
            )