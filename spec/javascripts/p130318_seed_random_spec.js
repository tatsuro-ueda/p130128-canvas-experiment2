
/*
Seed Random Library test
*/


(function() {

  describe("seedrandom", function() {
    return describe("when seed = 'hello'", function() {
      beforeEach(function() {
        return Math.seedrandom("hello");
      });
      return it("should return certain value", function() {
        return expect(Math.random()).toBe(0.5463663768140734);
      });
    });
  });

}).call(this);
