describe 'normal', ->
  input = null
  hint = null
  dropdown = null

  beforeEach ->
    loadFixtures("dom.html");
    input = $('#test1').typeahead
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

  it 'dropdown should have border-radius', ->
    expect(input).toHaveCss
      "border-top-left-radius":fixtures.borderRadius.base
      "border-top-right-radius":fixtures.borderRadius.base
      "border-bottom-right-radius":fixtures.borderRadius.base
      "border-bottom-left-radius":fixtures.borderRadius.base

  # background-color
  it 'hint should have background-color', ->
    expect(hint).toHaveCss
      "background-color":fixtures.backgroundColor.base

  it 'input should have background-color', ->
    expect(input).toHaveCss
      "background-color":fixtures.backgroundColor.transparent

  it 'dropdown should have background-color', ->
    expect(dropdown).toHaveCss
      "background-color":fixtures.backgroundColor.base

  it 'dropdown selected item should have primary background-color', ->
    expect(dropdown.find('.tt-is-under-cursor')).toHaveCss
      "background-color":fixtures.backgroundColor.focus

  # height
  it 'input should have height 34px', ->
    expect(input).toHaveCss
      "height":fixtures.height.base

  it 'hint should have height 34px', ->
    expect(hint).toHaveCss
      "height":fixtures.height.base

  # width
  it 'dropdown should have width as same as input', ->
    expect(dropdown).toHaveCss
      "width":getComputedStyle(input.get(0),null).getPropertyValue('width')

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
