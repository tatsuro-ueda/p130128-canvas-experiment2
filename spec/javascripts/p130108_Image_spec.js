(function() {

  describe("seedrandom", function() {
    return it("should return random value", function() {
      Math.seedrandom("hello");
      return expect(Math.random()).toBe(0.5463663768140734);
    });
  });

  describe("ScrambledImage040", function() {
    describe("constructed with 'image43.png', seed = 'hirakegoma'", function() {
      beforeEach(function() {
        this.simg = new ScrambledImage040("/assets/image43.png");
        return this.simg.seed = "hirakegoma";
      });
      describe("height = 8, width = 8", function() {
        beforeEach(function() {
          this.simg.height = 8;
          this.simg.width = 8;
          return this.simg.id = "040";
        });
        describe("#_putShuffleArray", function() {
          return it("should return certain shuffled array", function() {
            return expect(this.simg._putShuffleArray()).toEqual([55, 59, 16, 50, 48, 62, 49, 32, 22, 36, 42, 9, 3, 60, 53, 15, 31, 44, 26, 14, 20, 38, 18, 39, 11, 61, 57, 2, 29, 21, 30, 17, 56, 33, 41, 10, 35, 46, 23, 63, 52, 5, 19, 6, 54, 8, 27, 51, 13, 12, 37, 28, 25, 24, 7, 43, 58, 45, 47, 1, 34, 4, 40, 0]);
          });
        });
        describe("#_putShuffledMatrix", function() {
          return it("should return certain shuffled matrix", function() {
            return expect(this.simg._putShuffleMatrix()).toEqual([[55, 59, 16, 50, 48, 62, 49, 32], [22, 36, 42, 9, 3, 60, 53, 15], [31, 44, 26, 14, 20, 38, 18, 39], [11, 61, 57, 2, 29, 21, 30, 17], [56, 33, 41, 10, 35, 46, 23, 63], [52, 5, 19, 6, 54, 8, 27, 51], [13, 12, 37, 28, 25, 24, 7, 43], [58, 45, 47, 1, 34, 4, 40, 0]]);
          });
        });
        return describe("#_putReverseMatrix", function() {
          return it("should return certain reverse matrix", function() {
            return expect(this.simg._putReverseMatrix()).toEqual([[63, 59, 27, 12, 61, 41, 43, 54], [45, 11, 35, 24, 49, 48, 19, 15], [2, 31, 22, 42, 20, 29, 8, 38], [53, 52, 18, 46, 51, 28, 30, 16], [7, 33, 60, 36, 9, 50, 21, 23], [62, 34, 10, 55, 17, 57, 37, 58], [4, 6, 3, 47, 40, 14, 44, 0], [32, 26, 56, 1, 13, 25, 5, 39]]);
          });
        });
      });
      describe("height = 8, width = 6", function() {
        beforeEach(function() {
          this.simg.height = 8;
          this.simg.width = 6;
          return this.simg.id = "040";
        });
        describe("#_putShuffleArray", function() {
          return it("should return certain shuffled array", function() {
            return expect(this.simg._putShuffleArray()).toEqual([10, 6, 26, 39, 24, 7, 35, 23, 27, 11, 42, 43, 22, 32, 21, 40, 14, 36, 2, 29, 20, 16, 13, 47, 15, 45, 12, 28, 4, 38, 31, 18, 9, 8, 44, 19, 37, 17, 5, 46, 41, 33, 34, 1, 25, 3, 30, 0]);
          });
        });
        return describe("#_putShuffledMatrix", function() {
          return it("should return certain shuffled matrix", function() {
            return expect(this.simg._putShuffleMatrix()).toEqual([[10, 6, 26, 39, 24, 7], [35, 23, 27, 11, 42, 43], [22, 32, 21, 40, 14, 36], [2, 29, 20, 16, 13, 47], [15, 45, 12, 28, 4, 38], [31, 18, 9, 8, 44, 19], [37, 17, 5, 46, 41, 33], [34, 1, 25, 3, 30, 0]]);
          });
        });
      });
      return describe("height = 16, width = 12", function() {
        beforeEach(function() {
          this.simg.height = 16;
          this.simg.width = this.simg.height * 3 / 4;
          this.simg.id = "040";
          return $('<p></p>').append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', '040')).appendTo('body');
        });
        return describe("#paint", function() {
          return it("should shuffle and paint image", function() {
            this.simg.paint();
            return expect(true).toBeTruthy();
          });
        });
      });
    });
    return describe("constructed with 'image61.png' which shuffled by seed = 'hirakegoma'", function() {
      beforeEach(function() {
        this.simg = new ScrambledImage040("/assets/image61.png");
        return this.simg.seed = "hirakegoma";
      });
      return describe("height = 16, width = 12", function() {
        beforeEach(function() {
          this.simg.height = 16;
          this.simg.width = this.simg.height * 3 / 4;
          this.simg.id = "decoded";
          return $('<p></p>').append($('<canvas></canvas>').attr('width', 320).attr('height', 240).attr('id', 'decoded')).appendTo('body');
        });
        return describe(".isDecode = true", function() {
          beforeEach(function() {
            return this.simg.isDecode = true;
          });
          return describe("#paint", function() {
            return it("should shuffle and paint image", function() {
              this.simg.paint();
              return expect(true).toBeTruthy();
            });
          });
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

  describe("cryptico Library", function() {
    return describe("with password = 'todo', text = 'hirakegoma'", function() {
      beforeEach(function() {
        return this.encrypted = sjcl.encrypt("todo", "hirakegoma");
      });
      return it("should decrypt text to 'hirakegoma'", function() {
        return expect(sjcl.decrypt("todo", this.encrypted)).toBe('hirakegoma');
      });
    });
  });

  describe("ViewWithSeedViewModel", function() {
    beforeEach(function() {
      return this.v = new ViewWithSeedViewModel;
    });
    describe(".encrypted", function() {
      beforeEach(function() {
        return this.encryptedKey = this.v.encryptedKey;
      });
      return it("should return encrypted object", function() {
        console.log(this.encryptedKey);
        return expect(true).toBeTruthy();
      });
    });
    return describe("personalPassword = 'todo'", function() {
      beforeEach(function() {
        return this.v.personalPassword('todo');
      });
      return describe(".decryptedPassword", function() {
        return it("should return 'hirakegoma'", function() {
          return expect(this.v.decryptedPassword()).toBe('hirakegoma');
        });
      });
    });
  });

}).call(this);
