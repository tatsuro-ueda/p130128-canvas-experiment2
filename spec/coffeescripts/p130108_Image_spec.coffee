describe "Scrambled Image 03", ->

  beforeEach ->
    $('<canvas></canvas>')
      .attr('width', 320)
      .attr('height', 240)
        .appendTo('body')
    $('body canvas').wrap('<p>')

  describe "#paint", ->
    it "should shuffle and paint image", ->
      simg = new ScrambledImage03(
        # "/assets/sample25.jpg",
        "/assets/sample11.jpg",
        [
          [1, 3, 4, 13]
          [2, 0, 5, 14]
          [6, 7, 8, 15]
          [9, 10, 11, 12]
        ]
      )
      simg.paint()
      expect(true).toBeTruthy()

describe "Scrambled Image 031", ->

  beforeEach ->
    $('<p></p>').append(
      $('<canvas></canvas>')
      .attr('width', 320)
      .attr('height', 240)
      .attr('id', '031')
    ).appendTo('body')

  describe "#paint", ->
    it "should shuffle and paint image", ->
      simg = new ScrambledImage031 "/assets/image42.png"
      simg.shuffleMatrix =
        [
          [1, 3, 4, 13]
          [2, 0, 5, 14]
          [6, 7, 8, 15]
          [9, 10, 11, 12]
        ]
      simg.id = "031"
      simg.paint()
      expect(true).toBeTruthy()

describe "Scrambled Image 032", ->

  beforeEach ->
    $('<p></p>').append(
      $('<canvas></canvas>')
      .attr('width', 320)
      .attr('height', 240)
      .attr('id', '032')
    ).appendTo('body')

  describe "#paint", ->
    it "should shuffle and paint image", ->
      simg = new ScrambledImage032 "/assets/image43.png"
      simg.id = "032"
      simg.paint()
      expect(true).toBeTruthy()