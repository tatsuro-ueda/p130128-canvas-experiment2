(function() {

  describe("seedrandom", function() {
    return it("should return random value", function() {
      Math.seedrandom("hello");
      return expect(Math.random()).toBe(0.5463663768140734);
    });
  });

  describe("ScrambledImage040", function() {
    beforeEach(function() {
      return $('<p></p>').append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', '040')).appendTo('body');
    });
    describe("seed = 'todo', height = 8, width = 8", function() {
      beforeEach(function() {
        this.simg = new ScrambledImage040("/assets/image43.png");
        this.simg.seed = "todo";
        this.simg.height = 8;
        this.simg.width = 8;
        return this.simg.id = "040";
      });
      describe("#_putShuffleArray", function() {
        return it("should return shuffled array", function() {
          return expect(this.simg._putShuffleArray()).toEqual([6, 63, 51, 60, 36, 45, 11, 49, 31, 44, 46, 57, 34, 50, 25, 17, 27, 33, 40, 61, 3, 8, 2, 14, 55, 5, 37, 23, 10, 41, 1, 22, 56, 16, 9, 39, 26, 43, 53, 12, 0, 18, 24, 59, 62, 19, 42, 54, 48, 13, 35, 30, 38, 20, 47, 4, 29, 7, 15, 32, 52, 28, 21, 58]);
        });
      });
      describe("#_putShuffledMatrix", function() {
        return it("should return shuffled matrix", function() {
          return expect(this.simg._putShuffleMatrix()).toEqual([[6, 63, 51, 60, 36, 45, 11, 49], [31, 44, 46, 57, 34, 50, 25, 17], [27, 33, 40, 61, 3, 8, 2, 14], [55, 5, 37, 23, 10, 41, 1, 22], [56, 16, 9, 39, 26, 43, 53, 12], [0, 18, 24, 59, 62, 19, 42, 54], [48, 13, 35, 30, 38, 20, 47, 4], [29, 7, 15, 32, 52, 28, 21, 58]]);
        });
      });
      return describe("#_reverseMatrix", function() {
        return it("should return reverse matrix", function() {
          return expect(this.simg._reverseMatrix()).toEqual([[40, 30, 22, 20, 55, 25, 0, 57], [21, 34, 28, 6, 39, 49, 23, 58], [33, 15, 41, 45, 53, 62, 31, 27], [42, 14, 36, 16, 61, 56, 51, 8], [59, 17, 12, 50, 4, 26, 52, 35], [18, 29, 46, 37, 9, 5, 10, 54], [48, 7, 13, 2, 60, 38, 47, 24], [32, 11, 63, 43, 3, 19, 44, 1]]);
        });
      });
    });
    describe("seed = 'todo', height = 8, width = 6", function() {
      beforeEach(function() {
        this.simg = new ScrambledImage040("/assets/image43.png");
        this.simg.seed = "todo";
        this.simg.height = 8;
        this.simg.width = 6;
        return this.simg.id = "040";
      });
      describe("#_putShuffleArray", function() {
        return it("should return shuffled array", function() {
          return expect(this.simg._putShuffleArray()).toEqual([39, 28, 16, 41, 19, 44, 30, 29, 1, 2, 47, 10, 40, 17, 34, 22, 36, 8, 4, 6, 37, 18, 25, 7, 0, 42, 46, 35, 13, 12, 27, 31, 32, 9, 24, 20, 26, 14, 33, 3, 45, 5, 11, 23, 38, 21, 15, 43]);
        });
      });
      return describe("#_putShuffledMatrix", function() {
        return it("should return shuffled matrix", function() {
          return expect(this.simg._putShuffleMatrix()).toEqual([[39, 28, 16, 41, 19, 44], [30, 29, 1, 2, 47, 10], [40, 17, 34, 22, 36, 8], [4, 6, 37, 18, 25, 7], [0, 42, 46, 35, 13, 12], [27, 31, 32, 9, 24, 20], [26, 14, 33, 3, 45, 5], [11, 23, 38, 21, 15, 43]]);
        });
      });
    });
    return describe("seed = 'todo', height = 3, width = 2", function() {
      beforeEach(function() {
        this.simg = new ScrambledImage040("/assets/image43.png");
        this.simg.seed = "todo";
        this.simg.height = 8;
        this.simg.width = 6;
        return this.simg.id = "040";
      });
      return describe("#paint", function() {
        return it("should shuffle and paint image", function() {
          this.simg.paint();
          return expect(true).toBeTruthy();
        });
      });
    });
  });

  describe("ViewOrderShuffled View Model", function() {
    return it("should have eight sources", function() {
      var v;
      v = new ViewOrderShuffledViewModel;
      return v.getFileNames().done(function() {
        return expect(v.sources.length).toBe(8);
      });
    });
  });

}).call(this);
