(function() {

  describe("Scrambled Image 03", function() {
    beforeEach(function() {
      $('<canvas></canvas>').attr('width', 320).attr('height', 240).appendTo('body');
      return $('body canvas').wrap('<p>');
    });
    return describe("#paint", function() {
      return it("should shuffle and paint image", function() {
        var simg;
        simg = new ScrambledImage03("/assets/sample11.jpg", [[1, 3, 4, 13], [2, 0, 5, 14], [6, 7, 8, 15], [9, 10, 11, 12]]);
        simg.paint();
        return expect(true).toBeTruthy();
      });
    });
  });

  describe("Scrambled Image 031", function() {
    beforeEach(function() {
      return $('<p></p>').append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', '031')).appendTo('body');
    });
    return describe("#paint", function() {
      return it("should shuffle and paint image", function() {
        var simg;
        simg = new ScrambledImage031("/assets/image42.png");
        simg.shuffleMatrix = [[1, 3, 4, 13], [2, 0, 5, 14], [6, 7, 8, 15], [9, 10, 11, 12]];
        simg.id = "031";
        simg.paint();
        return expect(true).toBeTruthy();
      });
    });
  });

  describe("Scrambled Image 032", function() {
    beforeEach(function() {
      return $('<p></p>').append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', '032')).appendTo('body');
    });
    return describe("#paint", function() {
      return it("should shuffle and paint image", function() {
        var simg;
        simg = new ScrambledImage032("/assets/image43.png");
        simg.id = "032";
        simg.paint();
        return expect(true).toBeTruthy();
      });
    });
  });

}).call(this);
