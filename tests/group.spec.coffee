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
    it 'input should have height `basic`', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height `basic`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `large`', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height `large`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

    # add-on h
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
    it 'input should have height `small`', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height `small`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `basic`', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height `basic`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `large`', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height `large`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `small`', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height `small`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `basic`', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height `basic`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `large`', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height `large`', ->
      expect(hint).toHaveCss
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
    it 'input should have height `small`', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height `small`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small

  describe 'none', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test14')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

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
    it 'input should have height `basic`', ->
      expect(input).toHaveCss
        "height":fixtures.height.base

    it 'hint should have height `basic`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.base

  describe 'none large', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test15')
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

    # height
    it 'input should have height `large`', ->
      expect(input).toHaveCss
        "height":fixtures.height.large

    it 'hint should have height `large`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.large

  describe 'none small', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      loadFixtures("dom.html");
      input = initTypeahead('#test16')
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

    # height
    it 'input should have height `small`', ->
      expect(input).toHaveCss
        "height":fixtures.height.small

    it 'hint should have height `small`', ->
      expect(hint).toHaveCss
        "height":fixtures.height.small