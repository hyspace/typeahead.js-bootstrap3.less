describe 'size', ->
  describe 'large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test2').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

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
    it 'input should have height 46px', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height 46px', ->
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
      input = $('#test3').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

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
    it 'input should have height 30px', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height 30px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

    # width
    it 'dropdown should have width as same as input', ->
      expect(dropdown).toHaveCss
        "width":getComputedStyle(input.get(0),null).getPropertyValue('width')
