describe 'status', ->
  describe 'readonly', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test4')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

      input.prop('readonly',true)

    # background-color
    it 'input should have background-color', ->
      expect(input).toHaveCss
        "background-color":fixtures.backgroundColor.disabled

    # border-color
    it 'input should have base border-color', ->
      expect(input).toHaveCss
        "border-top-color":fixtures.borderColor.base
        "border-right-color":fixtures.borderColor.base
        "border-bottom-color":fixtures.borderColor.base
        "border-left-color":fixtures.borderColor.base


  describe 'disabled', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test4')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

      input.prop('disabled',true)

    # background-color
    it 'input should have background-color', ->
      expect(input).toHaveCss
        "background-color":fixtures.backgroundColor.disabled

    # border-color
    it 'input should have base border-color', ->
      expect(input).toHaveCss
        "border-top-color":fixtures.borderColor.base
        "border-right-color":fixtures.borderColor.base
        "border-bottom-color":fixtures.borderColor.base
        "border-left-color":fixtures.borderColor.base