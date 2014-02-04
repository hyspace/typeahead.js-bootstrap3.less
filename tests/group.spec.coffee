describe 'group', ->
  describe 'left', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test6').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.base
        "border-bottom-right-radius":fixtures.borderRadius.base
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.base
        "border-bottom-right-radius":fixtures.borderRadius.base
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 34px', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height 34px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.base

  describe 'left large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test6').closest('.input-group').addClass('input-group-lg')
      input = $('#test6').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.large
        "border-bottom-right-radius":fixtures.borderRadius.large
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.large
        "border-bottom-right-radius":fixtures.borderRadius.large
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 45px', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height 45px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

  describe 'left small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test6').closest('.input-group').addClass('input-group-sm')
      input = $('#test6').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.small
        "border-bottom-right-radius":fixtures.borderRadius.small
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.small
        "border-bottom-right-radius":fixtures.borderRadius.small
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 30px', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height 30px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

  describe 'right', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test7').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.base
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.base

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.base
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.base

    # height
    it 'input should have height 34px', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height 34px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.base

  describe 'right large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test7').closest('.input-group').addClass('input-group-lg')
      input = $('#test7').typeahead
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
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.large

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.large
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.large

    # height
    it 'input should have height 45px', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height 45px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

  describe 'right small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test7').closest('.input-group').addClass('input-group-sm')
      input = $('#test7').typeahead
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
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.small

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.small
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.small

    # height
    it 'input should have height 30px', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height 30px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

  describe 'both', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test8').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 34px', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height 34px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.base

  describe 'both large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test8').closest('.input-group').addClass('input-group-lg')
      input = $('#test8').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 45px', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height 45px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

  describe 'both small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test8').closest('.input-group').addClass('input-group-sm')
      input = $('#test8').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.none
        "border-top-right-radius":fixtures.borderRadius.none
        "border-bottom-right-radius":fixtures.borderRadius.none
        "border-bottom-left-radius":fixtures.borderRadius.none

    # height
    it 'input should have height 30px', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height 30px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

  describe 'none', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test9').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.inputChar().down()
      parent = input.parent()
      hint = parent.find('.tt-hint')
      dropdown = parent.find('.tt-dropdown-menu')

    # border-radius
    it 'input should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.base
        "border-top-right-radius":fixtures.borderRadius.base
        "border-bottom-right-radius":fixtures.borderRadius.base
        "border-bottom-left-radius":fixtures.borderRadius.base

    it 'hint should have border-radius', ->
      expect(input).toHaveCss
        "border-top-left-radius":fixtures.borderRadius.base
        "border-top-right-radius":fixtures.borderRadius.base
        "border-bottom-right-radius":fixtures.borderRadius.base
        "border-bottom-left-radius":fixtures.borderRadius.base

    # height
    it 'input should have height 34px', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height 34px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.base

  describe 'none large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test9').closest('.input-group').addClass('input-group-lg')
      input = $('#test9').typeahead
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

    # height
    it 'input should have height 45px', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height 45px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

  describe 'none small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      $('#test9').closest('.input-group').addClass('input-group-sm')
      input = $('#test9').typeahead
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

    # height
    it 'input should have height 30px', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height 30px', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small