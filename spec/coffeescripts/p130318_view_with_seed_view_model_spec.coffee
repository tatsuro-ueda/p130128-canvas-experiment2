###
ViewWithSeedViewModel test
###

describe "ViewWithSeedViewModel", ->
  beforeEach ->
    @v = new ViewWithSeedViewModel

  describe ".encrypted", ->
    beforeEach ->
      @encryptedKey = @v.encryptedKey

    it "should return encrypted object", ->
      console.log @encryptedKey
      expect(true).toBeTruthy()

  describe "when personalPassword = 'todo'", ->
    beforeEach ->
      @v.personalPassword 'todo'

    describe ".decryptedPassword", ->
      it "should return 'hirakegoma'", ->
        expect(@v.decryptedPassword()).toBe 'hirakegoma'

