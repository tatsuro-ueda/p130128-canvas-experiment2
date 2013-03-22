
/*
ScrambledImage041 test
*/


(function() {
  var appendCanvasToBody;

  describe("ScrambledImage044", function() {
    describe("when constructed with 'image43.png',  seed = 'todo' height = 8, width = 8", function() {
      beforeEach(function() {
        return this.simg = new ScrambledImage044("/assets/image43.png", {
          seed: "todo",
          height: 8,
          width: 8
        });
      });
      describe("#getShuffleArray_", function() {
        return it("should return certain shuffled array", function() {
          return expect(this.simg.getShuffleArray_()).toEqual([6, 63, 51, 60, 36, 45, 11, 49, 31, 44, 46, 57, 34, 50, 25, 17, 27, 33, 40, 61, 3, 8, 2, 14, 55, 5, 37, 23, 10, 41, 1, 22, 56, 16, 9, 39, 26, 43, 53, 12, 0, 18, 24, 59, 62, 19, 42, 54, 48, 13, 35, 30, 38, 20, 47, 4, 29, 7, 15, 32, 52, 28, 21, 58]);
        });
      });
      describe("#getShuffledMatrix_", function() {
        return it("should return certain shuffled matrix", function() {
          return expect(this.simg.getShuffleMatrix_()).toEqual([[6, 63, 51, 60, 36, 45, 11, 49], [31, 44, 46, 57, 34, 50, 25, 17], [27, 33, 40, 61, 3, 8, 2, 14], [55, 5, 37, 23, 10, 41, 1, 22], [56, 16, 9, 39, 26, 43, 53, 12], [0, 18, 24, 59, 62, 19, 42, 54], [48, 13, 35, 30, 38, 20, 47, 4], [29, 7, 15, 32, 52, 28, 21, 58]]);
        });
      });
      return describe("#getReverseMatrix_", function() {
        return it("should return certain reverse matrix", function() {
          return expect(this.simg.getReverseMatrix_()).toEqual([[40, 30, 22, 20, 55, 25, 0, 57], [21, 34, 28, 6, 39, 49, 23, 58], [33, 15, 41, 45, 53, 62, 31, 27], [42, 14, 36, 16, 61, 56, 51, 8], [59, 17, 12, 50, 4, 26, 52, 35], [18, 29, 46, 37, 9, 5, 10, 54], [48, 7, 13, 2, 60, 38, 47, 24], [32, 11, 63, 43, 3, 19, 44, 1]]);
        });
      });
    });
    describe("when constructed with 'image43.png',  seed = 'todo' height = 8, width = 8", function() {
      beforeEach(function() {
        return this.simg = new ScrambledImage044("/assets/image43.png", {
          seed: "todo",
          height: 8,
          width: 6
        });
      });
      describe("#getShuffleArray_", function() {
        return it("should return certain shuffled array", function() {
          return expect(this.simg.getShuffleArray_()).toEqual([39, 28, 16, 41, 19, 44, 30, 29, 1, 2, 47, 10, 40, 17, 34, 22, 36, 8, 4, 6, 37, 18, 25, 7, 0, 42, 46, 35, 13, 12, 27, 31, 32, 9, 24, 20, 26, 14, 33, 3, 45, 5, 11, 23, 38, 21, 15, 43]);
        });
      });
      return describe("#getShuffledMatrix_", function() {
        return it("should return certain shuffled matrix", function() {
          return expect(this.simg.getShuffleMatrix_()).toEqual([[39, 28, 16, 41, 19, 44], [30, 29, 1, 2, 47, 10], [40, 17, 34, 22, 36, 8], [4, 6, 37, 18, 25, 7], [0, 42, 46, 35, 13, 12], [27, 31, 32, 9, 24, 20], [26, 14, 33, 3, 45, 5], [11, 23, 38, 21, 15, 43]]);
        });
      });
    });
    return describe("for rendering actually to the test result page", function() {
      describe("when constructed with 'image43.png',    seed = 'todo' height = 8, width = 8", function() {
        beforeEach(function() {
          return this.simg = new ScrambledImage044("/assets/image43.png", {
            seed: "todo",
            height: 16,
            width: 12,
            canvasIdString: "first"
          });
        });
        return describe("#scramble", function() {
          beforeEach(function() {
            spyOn(this.simg, "scramble").andCallThrough();
            return this.simg.scramble();
          });
          return describe("#paint", function() {
            beforeEach(function() {
              appendCanvasToBody("first");
              spyOn(this.simg, "paint").andCallThrough();
              return this.simg.paint();
            });
            return it("should shuffle and paint image", function() {
              expect(this.simg.scramble).toHaveBeenCalled();
              return expect(this.simg.paint).toHaveBeenCalled();
            });
          });
        });
      });
      return describe("when constructed with 'image62.png'    which shuffled by seed = 'todo',  height = 16, width = 12", function() {
        beforeEach(function() {
          return this.simg = new ScrambledImage044("/assets/image62.png", {
            seed: "todo",
            height: 16,
            width: 12,
            canvasIdString: "second"
          });
        });
        return describe("#fix", function() {
          beforeEach(function() {
            spyOn(this.simg, "fix").andCallThrough();
            return this.simg.fix();
          });
          return describe("#paint", function() {
            beforeEach(function() {
              appendCanvasToBody("second");
              return this.simg.paint();
            });
            return it("should fix shuffled image and paint it", function() {
              return expect(this.simg.fix).toHaveBeenCalled();
            });
          });
        });
      });
    });
  });

  appendCanvasToBody = function(id) {
    return $('<p></p>').attr('id', id).append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', id)).appendTo('body');
  };

}).call(this);
