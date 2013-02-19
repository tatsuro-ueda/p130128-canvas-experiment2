# describe "ScrambledImage03", ->

#   beforeEach ->
#     $('<canvas></canvas>')
#       .attr('width', 320)
#       .attr('height', 240)
#         .appendTo('body')
#     $('body canvas').wrap('<p>')

#   describe "#paint", ->
#     it "should shuffle and paint image", ->
#       simg = new ScrambledImage03(
#         # "/assets/sample25.jpg",
#         "/assets/sample11.jpg",
#         [
#           [1, 3, 4, 13]
#           [2, 0, 5, 14]
#           [6, 7, 8, 15]
#           [9, 10, 11, 12]
#         ]
#       )
#       simg.paint()
#       expect(true).toBeTruthy()

# describe "ScrambledImage031", ->

#   beforeEach ->
#     $('<p></p>').append(
#       $('<canvas></canvas>')
#       .attr('width', 320)
#       .attr('height', 240)
#       .attr('id', '031')
#     ).appendTo('body')

#   describe "#paint", ->
#     it "should shuffle and paint image", ->
#       simg = new ScrambledImage040 "/assets/image42.png"
#       simg.id = "031"
#       simg.paint()
#       expect(true).toBeTruthy()

# describe "ScrambledImage032", ->

#   beforeEach ->
#     $('<p></p>').append(
#       $('<canvas></canvas>')
#       .attr('width', 320)
#       .attr('height', 240)
#       .attr('id', '032')
#     ).appendTo('body')

#   describe "#paint", ->
#     it "should shuffle and paint image", ->
#       simg = new ScrambledImage032 "/assets/image43.png"
#       simg.id = "032"
#       simg.paint()
#       expect(true).toBeTruthy()

describe "seedrandom", ->
  it "should return random value", ->
    Math.seedrandom "hello"
    expect(Math.random()).toBe 0.5463663768140734

describe "ScrambledImage040", ->

  beforeEach ->
    $('<p></p>').append(
      $('<canvas></canvas>')
      .attr('width', 320)
      .attr('height', 240)
      .attr('id', '040')
    ).appendTo('body')

  describe "seed = 'todo', height = 8, width = 8", ->
    beforeEach ->
      @simg = new ScrambledImage040 "/assets/image43.png"
      @simg.seed = "todo"
      @simg.height = 8
      @simg.width = 8
      @simg.id = "040"

    describe "#_putShuffleArray", ->
      it "should return shuffled array", ->
        expect(@simg._putShuffleArray()).toEqual(
          [ 6, 63, 51, 60, 36, 45, 11, 49
           31, 44, 46, 57, 34, 50, 25, 17
           27, 33, 40, 61, 3, 8, 2, 14
           55, 5, 37, 23, 10, 41, 1, 22
           56, 16, 9, 39, 26, 43, 53, 12
           0, 18, 24, 59, 62, 19, 42, 54
           48, 13, 35, 30, 38, 20, 47, 4
           29, 7, 15, 32, 52, 28, 21, 58 ]
        )

    describe "#_putShuffledMatrix", ->
      it "should return shuffled matrix", ->
        expect(@simg._putShuffleMatrix()).toEqual(
          [
            [  6, 63, 51, 60, 36, 45, 11, 49 ]
            [ 31, 44, 46, 57, 34, 50, 25, 17 ]
            [ 27, 33, 40, 61,  3,  8,  2, 14 ]
            [ 55,  5, 37, 23, 10, 41,  1, 22 ]
            [ 56, 16,  9, 39, 26, 43, 53, 12 ]
            [  0, 18, 24, 59, 62, 19, 42, 54 ]
            [ 48, 13, 35, 30, 38, 20, 47,  4 ]
            [ 29,  7, 15, 32, 52, 28, 21, 58 ]
          ]
        )

    describe "#_reverseMatrix", ->
      it "should return reverse matrix", ->
        expect(@simg._reverseMatrix()).toEqual(
          [
            [ 40, 30, 22, 20, 55, 25,  0, 57 ]
            [ 21, 34, 28,  6, 39, 49, 23, 58 ]
            [ 33, 15, 41, 45, 53, 62, 31, 27 ]
            [ 42, 14, 36, 16, 61, 56, 51,  8 ]
            [ 59, 17, 12, 50,  4, 26, 52, 35 ]
            [ 18, 29, 46, 37,  9,  5, 10, 54 ]
            [ 48,  7, 13,  2, 60, 38, 47, 24 ]
            [ 32, 11, 63, 43,  3, 19, 44,  1 ]
          ]
        )

  describe "seed = 'todo', height = 8, width = 6", ->
    beforeEach ->
      @simg = new ScrambledImage040 "/assets/image43.png"
      @simg.seed = "todo"
      @simg.height = 8
      @simg.width = 6
      @simg.id = "040"

    describe "#_putShuffleArray", ->
      it "should return shuffled array", ->
        expect(@simg._putShuffleArray()).toEqual(
          [
            39, 28, 16, 41, 19, 44
            30, 29,  1,  2, 47, 10
            40, 17, 34, 22, 36,  8
             4,  6, 37, 18, 25,  7
             0, 42, 46, 35, 13, 12
            27, 31, 32,  9, 24, 20
            26, 14, 33,  3, 45,  5
            11, 23, 38, 21, 15, 43
          ]
        )

    describe "#_putShuffledMatrix", ->
      it "should return shuffled matrix", ->
        expect(@simg._putShuffleMatrix()).toEqual(
          [
            [39, 28, 16, 41, 19, 44]
            [30, 29,  1,  2, 47, 10]
            [40, 17, 34, 22, 36,  8]
            [ 4,  6, 37, 18, 25,  7]
            [ 0, 42, 46, 35, 13, 12]
            [27, 31, 32,  9, 24, 20]
            [26, 14, 33,  3, 45,  5]
            [11, 23, 38, 21, 15, 43]
          ]
        )

  describe "seed = 'todo', height = 3, width = 2", ->
    beforeEach ->
      @simg = new ScrambledImage040 "/assets/image43.png"
      @simg.seed = "todo"
      @simg.height = 8
      @simg.width = 6
      @simg.id = "040"

    describe "#paint", ->
      it "should shuffle and paint image", ->
        # @simg.shuffleMatrix =
        #   [
        #     [1, 3, 4, 7]
        #     [2, 0, 5, 6]
        #   ]
        @simg.paint()
        expect(true).toBeTruthy()

describe "ViewOrderShuffled View Model", ->
  it "should have eight sources", ->
    v = new ViewOrderShuffledViewModel
    v.getFileNames()
    .done ->
      expect(v.sources.length).toBe 8