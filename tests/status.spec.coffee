describe 'status', ->
  describe 'readonly', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test4').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.prop('readonly',true)
      parent = input.parent()
      hint = parent.find('.tt-hint')
      # dropdown = parent.find('.tt-dropdown-menu')

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

    # focused status can't be tested under phantomjs
    # it 'input should have focused border-color', ->
    #   runs ->
    #     input.focus()

    #   waits(200);

    #   runs ->
    #     # console.log getComputedStyle(input.get(0),null).getPropertyValue('border-top-color')
    #     expect(input).toHaveCss
    #       "border-top-color":fixtures.borderColor.baseFocus
    #       "border-right-color":fixtures.borderColor.baseFocus
    #       "border-bottom-color":fixtures.borderColor.baseFocus
    #       "border-left-color":fixtures.borderColor.baseFocus


  describe 'disabled', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = $('#test4').typeahead
        name: 'repos'
        local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']

      input.prop('disabled',true)
      parent = input.parent()
      hint = parent.find('.tt-hint')
      # dropdown = parent.find('.tt-dropdown-menu')

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