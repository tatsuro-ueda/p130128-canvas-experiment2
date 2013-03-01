root = exports ? this
class root.ScrambledImage042
  fileName = null
  shuffleMatrix = []
  context = null
  canvas = null
  canvasId = null
  seed = null
  ###
  HeightPartitionNum
  WidthPartitionNum
  ###
  height = null
  width = null

  ###
  TODO: write exception when w * h isnt sizeof shuffleMatrix
  ###
  constructor: (fileName) ->
    @fileName = fileName
    @shuffleMatrix =
      [
        [0]
      ]

  ###
  make shuffle array
  ###
  putShuffleArray_: ->
    Math.seedrandom @seed
    array = []
    sizeofMatrix = @height * @width
    ###
    At first, make a[] list as [1, 2, 3..., (sizeof_matrix - 1)]
    ###
    for cell_i in [0...sizeofMatrix]
      array[cell_i] = cell_i
    ###
    Then, randomize a[] list by Fisher–Yates shuffle algorithm
    ###
    for cell_i in [(sizeofMatrix - 1)..1]
      cell_j = Math.floor(Math.random() * (cell_i + 1))
      tmp = array[cell_i]
      array[cell_i] = array[cell_j]
      array[cell_j] = tmp
    return array

  ###
  make shuffle matrix from shuffle array
  ###
  putShuffleMatrix_: ->
    shuffleArray = []
    shuffleArray = @putShuffleArray_()
    shuffleMatrix = []
    for height_i in [0...@height]
      shuffleMatrix[height_i] = []
      for width_j in [0...@width]
        shuffleMatrix[height_i][width_j] =
        shuffleArray[(height_i * @width) + width_j]
    return shuffleMatrix

  ###
  make reverse matrix from shuffle matrix
  ###
  putReverseMatrix_: ->
    shuffleMatrix = []
    shuffleMatrix = @putShuffleMatrix_()

    ###
    At first, make reverse matrix with 0 in all cell
    ###
    reverseMatrix = []
    for height_i in [0...@height]
      reverseMatrix[height_i] = []
      for width_j in [0...@width]
        reverseMatrix[height_i][width_j] = 0

    ###
    Then, make reverse matrix with value of shuffle matrix
    ###
    for height_i in [0...@height]
      for width_j in [0...@width]
        shuffleTo = shuffleMatrix[height_i][width_j]
        height = Math.floor(shuffleTo / @width)
        width = shuffleTo % @width
        reverseMatrix[height][width] =
        @width * height_i + width_j
    return reverseMatrix

  scramble: ->
    @shuffleMatrix = @putShuffleMatrix_()

  fix: ->
    @shuffleMatrix = @putReverseMatrix_()

  paint: ->
    ###
    create matrix with parameters when matrix isnt given
    ###
    # if !@shuffleMatrix? or @shuffleMatrix.length is 1

    @height = @shuffleMatrix.length
    @width = @shuffleMatrix[0].length

    image = new Image
    image.src = @fileName
    $(image)
    .on 'load', =>

      ###
      canvas finding and initialization
      ###
      if @canvasId?
        canvas = $('canvas#' + @canvasId)[0]
      else
        canvas = $('canvas')[0]
      context = canvas.getContext "2d"
      canvas.height = image.height
      canvas.width = image.width
      context.drawImage image, 0, 0

      cellWidth = canvas.width / @width
      cellHeight = canvas.height / @height

      ###
      prepare getting image cell data
      ###
      imageData = []
      getCellImageData = (height_i, width_j) =>
        context.getImageData(
          cellWidth * width_j,
          cellHeight * height_i,
          cellWidth,
          cellHeight
        )

      ###
      get image cell data
      ###
      for height_i in [0...@height]
        imageData[height_i] = []
        for width_j in [0...@width]
          imageData[height_i].push(getCellImageData height_i, width_j)

      ###
      put image cell data with shuffle matrix
      ###
      for height_i in [0...@height]
        for width_j in [0...@width]
          # if window.console? then console.log i + ', ' + j # for Debug
          width_index = @shuffleMatrix[height_i][width_j] % @width
          height_index = Math.floor(@shuffleMatrix[height_i][width_j] / @width)
          context.putImageData(
            imageData[height_i][width_j],
            # x
            cellWidth * width_index,
            # y
            cellHeight * height_index
          )