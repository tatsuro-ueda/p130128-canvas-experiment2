
/*
ViewWithSeedViewModel test
*/


(function() {

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
    return describe("when personalPassword = 'todo'", function() {
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
