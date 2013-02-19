root = exports ? this
class root.ScrambledImage040
  fileName = null
  shuffleMatrix = []
  context = null
  canvas = null
  id = null
  seed = null
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
    @shuffleMatrix =
      [
        [0]
      ]
 
  _putShuffleArray: ->
    Math.seedrandom @seed
    a = []
    num = @height * @width
    for i in [0...num]
      a[i] = i
    for i in [num - 1..1]
      j = Math.floor(Math.random() * (i + 1))
      tmp = a[i]
      a[i] = a[j]
      a[j] = tmp
    return a

  _putShuffleMatrix: ->
    a = []
    a = @_putShuffleArray()
    b = []
    for i in [0...@height]
      b[i] = []
      for j in [0...@width]
        b[i][j] = a[i * @width + j]
    return b

  _reverseMatrix: ->
    b = []
    b = @_putShuffleMatrix()
    c = []
    for i in [0...@height]
      c[i] = []
      for j in [0...@width]
        c[i][j] = 0
    for i in [0...@height]
      for j in [0...@width]
        k = b[i][j]
        h = Math.floor(k / @width)
        w = k % @width
        c[h][w] = @width * i + j
    return c
    
  paint: ->
    if !@shuffleMatrix? or @shuffleMatrix.length is 1
      @shuffleMatrix = @_putShuffleMatrix()
    console.log @shuffleMatrix
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
        for i in [0...@h]
          imageData[i] = []
          for j in [0...@w]
            imageData[i].push(getCellImageData i, j)

        ###
        put image cell data with shuffle matrix
        ###
        for i in [0...@h]
          for j in [0...@w]
            console.log i + ', ' + j 
            context.putImageData(
              imageData[i][j],
              (canvas.width / @w) * (@shuffleMatrix[i][j] % @w),
              (canvas.height / @h) * Math.floor(@shuffleMatrix[i][j] / @w)
            )