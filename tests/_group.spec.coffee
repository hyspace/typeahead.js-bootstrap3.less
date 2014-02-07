describe 'group', ->
  describe 'left', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test5')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `basic`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.base

  describe 'left large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test6')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `large`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.large

  describe 'left small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test7')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `small`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.small

  describe 'right', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test8')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `basic`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.base

  describe 'right large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test9')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `large`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.large

  describe 'right small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test10')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `small`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.small

  describe 'both', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test11')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `basic`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.base

  describe 'both large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test12')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `large`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.large

  describe 'both small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test13')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    # add-on height
    it 'addon should have height `small`', ->
      addon = input.closest('.input-group').find(fixtures.class.addOn)
      expect(addon).toHaveCss
        "height":fixtures.height.small