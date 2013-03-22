###
Stanford Javascript Crypt Library test
###

describe "sjcl", ->
  describe "when password = 'todo', text = 'hirakegoma'", ->
    beforeEach ->
      @encrypted = sjcl.encrypt("todo", "hirakegoma")

    it "should decrypt text to 'hirakegoma'", ->
      expect(sjcl.decrypt "todo", @encrypted).toBe 'hirakegoma'

    # it "should return null with wrong password", ->
    #   expect(sjcl.decrypt "hoge", @encrypted).toBeUndefined()

