    describe "FakeCodeForQuestion", ->
      describe "with HTML fixture", ->
        beforeEach ->
          loadFixtures "p130318_canvas_fixture.html"
          @obj = new FakeCodeForQuestion

        describe "#addText", ->
          beforeEach ->
            @obj.addTextToParagraph0()

          it "should add text", ->
            expect($('p#0')).toHaveText "text"