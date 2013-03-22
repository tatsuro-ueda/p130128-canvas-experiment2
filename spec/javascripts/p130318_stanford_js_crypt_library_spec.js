
/*
Stanford Javascript Crypt Library test
*/


(function() {

  describe("sjcl", function() {
    return describe("when password = 'todo', text = 'hirakegoma'", function() {
      beforeEach(function() {
        return this.encrypted = sjcl.encrypt("todo", "hirakegoma");
      });
      return it("should decrypt text to 'hirakegoma'", function() {
        return expect(sjcl.decrypt("todo", this.encrypted)).toBe('hirakegoma');
      });
    });
  });

}).call(this);
