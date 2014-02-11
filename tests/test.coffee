_testOne = (selector=':input', size='base', borderRadius=[1,1,1,1], status='transparent', validation='none')->
  describe 'test', ->
    input = null
    hint = null
    dropdown = null

    beforeEach ->
      input = initTypeahead(selector)
      parent = input.parent()
      hint = parent.find(fixtures.class.hint)
      dropdown = parent.find(fixtures.class.dropdown)

    describe 'border-radius', ->
      # border-radius
      it 'input should have border-radius', ->
        expect(input).toHaveCss
          "border-top-left-radius":fixtures.borderRadius[if borderRadius[0] then size else 'none']
          "border-top-right-radius":fixtures.borderRadius[if borderRadius[1] then size else 'none']
          "border-bottom-right-radius":fixtures.borderRadius[if borderRadius[2] then size else 'none']
          "border-bottom-left-radius":fixtures.borderRadius[if borderRadius[3] then size else 'none']
        return

      it 'dropdown should have border-radius', ->
        expect(dropdown).toHaveCss
          "border-top-left-radius":fixtures.borderRadius.base
          "border-top-right-radius":fixtures.borderRadius.base
          "border-bottom-right-radius":fixtures.borderRadius.base
          "border-bottom-left-radius":fixtures.borderRadius.base
        return

      return


    describe 'background-color', ->
      # background-color
      it 'hint should have background-color', ->
        expect(hint).toHaveCss
          "background-color":fixtures.backgroundColor[if status == 'disabled' or status == 'readonly' then 'disabled' else 'base']
        return

      it 'input should have background-color', ->
        expect(input).toHaveCss
          "background-color":fixtures.backgroundColor[if status == 'disabled' or status == 'readonly' then 'disabled' else 'transparent']
        return

      it 'dropdown should have background-color', ->
        expect(dropdown).toHaveCss
          "background-color":fixtures.backgroundColor.base
        return

      # selected background-color
      it 'selected item should have primary background-color', ->
        expect(dropdown.find(fixtures.class.cursor)).toHaveCss
          "background-color":fixtures.backgroundColor.focus
        return

      return

    describe 'border-color', ->
      # border-color
      it 'input should have border-color', ->
        if validation != 'none'
          expect(input).toHaveCss
            "border-top-color":fixtures.borderColor[validation]
            "border-right-color":fixtures.borderColor[validation]
            "border-bottom-color":fixtures.borderColor[validation]
            "border-left-color":fixtures.borderColor[validation]
        else
          expect(input).toHaveCss
            "border-top-color":fixtures.borderColor.base
            "border-right-color":fixtures.borderColor.base
            "border-bottom-color":fixtures.borderColor.base
            "border-left-color":fixtures.borderColor.base

      return

    describe 'offsetTop', ->
      it 'of dropdown should equals input height plus 2px', ->
        inputOffsetTop = input.offset().top
        dropdownOffsetTop = dropdown.offset().top
        height = parseInt(fixtures.height[size].match(/(-?\d+)/)[1], 10)
        expect(dropdownOffsetTop - inputOffsetTop).toBe(height + 2)
        return

      return

    describe 'width', ->
      # width
      it 'dropdown should have width as same as input', ->
        expect(dropdown).toHaveCss
          "width":getComputedStyle(input.get(0),null).getPropertyValue('width')
        return

      return

    describe 'height', ->
      # height
      it 'input should have height', ->
        expect(input).toHaveCss
          "height":fixtures.height[size]
        return

      it 'hint should have height', ->
        expect(hint).toHaveCss
          "height":fixtures.height[size]
        return

      return

  return

_testAll = (selector=':input', size='base', borderRadius=[1,1,1,1])->

  describe 'normal', ->
    _testOne(selector, size, borderRadius, 'transparent')
    return
  describe 'readonly', ->
    beforeEach ->
      $(selector).prop('readonly',true)
      return
    _testOne(selector, size, borderRadius, 'readonly')
    return
  describe 'disabled', ->
    beforeEach ->
      $(selector).prop('disabled',true)
      return
    _testOne(selector, size, borderRadius, 'disabled')
    return
  describe 'error', ->
    beforeEach ->
      $(selector).closest('.form-group').addClass('has-error')
      return
    _testOne(selector, size, borderRadius, 'transparent', 'error')
    return
  describe 'warning', ->
    beforeEach ->
      $(selector).closest('.form-group').addClass('has-warning')
      return
    _testOne(selector, size, borderRadius, 'transparent', 'warning')
    return
  describe 'success', ->
    beforeEach ->
      $(selector).closest('.form-group').addClass('has-success')
      return
    _testOne(selector, size, borderRadius, 'transparent', 'success')
    return