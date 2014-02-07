describe 'normal', ->
  input = null
  hint = null
  dropdown = null

  beforeEach ->
    loadFixtures("dom.html");
    input = initTypeahead('#test1')
    parent = input.parent()
    hint = parent.find(fixtures.class.hint)
    dropdown = parent.find(fixtures.class.dropdown)

  # focused status can't be tested under phantomjs
  it 'input should have focused border-color', ->
    runs ->
      input.focus()

    waits(300);

    runs ->
      console.log getComputedStyle(input.get(0),null).getPropertyValue('border-top-color')
      expect(input).toHaveCss
        "border-top-color":fixtures.borderColor.baseFocus
        "border-right-color":fixtures.borderColor.baseFocus
        "border-bottom-color":fixtures.borderColor.baseFocus
        "border-left-color":fixtures.borderColor.baseFocus
