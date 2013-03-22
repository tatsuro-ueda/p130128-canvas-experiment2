###
Seed Random Library test
###

describe "seedrandom", ->
  describe "when seed = 'hello'", ->
    beforeEach ->
      Math.seedrandom "hello"

    it "should return certain value", ->
      expect(Math.random()).toBe 0.5463663768140734
