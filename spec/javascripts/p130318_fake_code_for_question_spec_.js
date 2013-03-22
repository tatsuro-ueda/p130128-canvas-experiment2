(function() {

  describe("FakeCodeForQuestion", function() {
    return describe("with HTML fixture", function() {
      beforeEach(function() {
        loadFixtures("p130318_canvas_fixture.html");
        return this.obj = new FakeCodeForQuestion;
      });
      return describe("#addText", function() {
        beforeEach(function() {
          return this.obj.addTextToParagraph0();
        });
        return it("should add text", function() {
          return expect($('p#0')).toHaveText("text");
        });
      });
    });
  });

}).call(this);
