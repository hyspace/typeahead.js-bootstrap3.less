test = (size, status, borderRadius, validation)->
  describe 'basic', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      input = initTypeahead(':input')
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    describe 'border-radius', ->
      # border-radius
      it 'input should have border-radius', ->
        expect(input).toHaveCss
          "border-top-left-radius":fixtures.borderRadius[if borderRadius[0] then size else 0]
          "border-top-right-radius":fixtures.borderRadius[if borderRadius[1] then size else 0]
          "border-bottom-right-radius":fixtures.borderRadius[if borderRadius[2] then size else 0]
          "border-bottom-left-radius":fixtures.borderRadius[if borderRadius[3] then size else 0]

      it 'hint should have border-radius', ->
        expect(hint).toHaveCss
          "border-top-left-radius":fixtures.borderRadius[if borderRadius[0] then size else 0]
          "border-top-right-radius":fixtures.borderRadius[if borderRadius[1] then size else 0]
          "border-bottom-right-radius":fixtures.borderRadius[if borderRadius[2] then size else 0]
          "border-bottom-left-radius":fixtures.borderRadius[if borderRadius[3] then size else 0]

      it 'dropdown should have border-radius', ->
        expect(dropdown).toHaveCss
          "border-top-left-radius":fixtures.borderRadius.base
          "border-top-right-radius":fixtures.borderRadius.base
          "border-bottom-right-radius":fixtures.borderRadius.base
          "border-bottom-left-radius":fixtures.borderRadius.base

    describe 'background-color', ->
      # background-color
      it 'hint should have background-color', ->
        expect(hint).toHaveCss
          "background-color":fixtures.backgroundColor.base

      it 'input should have background-color', ->
        expect(input).toHaveCss
          "background-color":fixtures.backgroundColor[if status == 'disabled' or status == 'readonly' then 'disabled' else 'transparent']

      it 'dropdown should have background-color', ->
        expect(dropdown).toHaveCss
          "background-color":fixtures.backgroundColor.base

      # selected background-color
      it 'selected item should have primary background-color', ->
        expect(dropdown.find(fixtures.class.cursor)).toHaveCss
          "background-color":fixtures.backgroundColor.focus

    describe 'border-color', ->
      # border-color
      if validation != 'none'
        it 'input should have border-color', ->
          expect(input).toHaveCss
            "border-top-color":fixtures.borderColor[validation]
            "border-right-color":fixtures.borderColor[validation]
            "border-bottom-color":fixtures.borderColor[validation]
            "border-left-color":fixtures.borderColor[validation]
      else
        it 'input should have border-color', ->
          expect(input).toHaveCss
            "border-top-color":fixtures.borderColor.base
            "border-right-color":fixtures.borderColor.base
            "border-bottom-color":fixtures.borderColor.base
            "border-left-color":fixtures.borderColor.base

    describe 'offsetTop', ->
      it 'of dropdown should equals input height plus 2px', ->
        inputOffsetTop = input.offset().top
        dropdownOffsetTop = dropdown.offset().top
        height = parseInt(fixtures.height[size].match(/(-?\d+)/)[1], 10)
        expect(dropdownOffsetTop - inputOffsetTop).toBe(height + 2)

    describe 'width', ->
      # width
      it 'dropdown should have width as same as input', ->
        expect(dropdown).toHaveCss
          "width":getComputedStyle(input.get(0),null).getPropertyValue('width')

    describe 'height', ->
      # height
      it 'input should have height', ->
        expect(input).toHaveCss
          "height":fixtures.height[size]

      it 'hint should have height', ->
        expect(hint).toHaveCss
          "height":fixtures.height[size]
