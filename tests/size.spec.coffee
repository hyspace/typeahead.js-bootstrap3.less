describe 'size', ->
  describe 'large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test2')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.large
        "border-top-right-radius":fixtures.borderRadius.large
        "border-bottom-right-radius":fixtures.borderRadius.large
        "border-bottom-left-radius":fixtures.borderRadius.large

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.large
        "border-top-right-radius":fixtures.borderRadius.large
        "border-bottom-right-radius":fixtures.borderRadius.large
        "border-bottom-left-radius":fixtures.borderRadius.large

    it 'dropdown should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.large
        "border-top-right-radius":fixtures.borderRadius.large
        "border-bottom-right-radius":fixtures.borderRadius.large
        "border-bottom-left-radius":fixtures.borderRadius.large

    # height
    it 'input should have height `large`', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height `large`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

    # width
    it 'dropdown should have width as same as input', ->
      expect(dropdown).toHaveCss
        "width":getComputedStyle(input.get(0),null).getPropertyValue('width')


  describe 'small', ->
    input = null
    hint = null
    dropdown = null
    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test3')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.small
        "border-top-right-radius":fixtures.borderRadius.small
        "border-bottom-right-radius":fixtures.borderRadius.small
        "border-bottom-left-radius":fixtures.borderRadius.small

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.small
        "border-top-right-radius":fixtures.borderRadius.small
        "border-bottom-right-radius":fixtures.borderRadius.small
        "border-bottom-left-radius":fixtures.borderRadius.small

    it 'dropdown should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.small
        "border-top-right-radius":fixtures.borderRadius.small
        "border-bottom-right-radius":fixtures.borderRadius.small
        "border-bottom-left-radius":fixtures.borderRadius.small

    # height
    it 'input should have height `small`', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height `small`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

    # width
    it 'dropdown should have width as same as input', ->
      expect(dropdown).toHaveCss
        "width":getComputedStyle(input.get(0),null).getPropertyValue('width')
