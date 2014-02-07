jasmine.getFixtures().fixturesPath = "base/tests/fixtures/"

isString = (obj) ->
  typeof obj is "string"

getKeyEvent = (type, key) ->
  event = $.Event(type)
  event.ghostwriter = true
  if type is "keypress"
    event.which = event.keyCode = event.charCode = (if isString(key) then key.charCodeAt(0) else key)
  else if type is "keydown" or type is "keyup"
    event.charCode = 0
    event.which = event.charCode = (if isString(key) then key.toUpperCase().charCodeAt(0) else key)
  else if type is "textInput"
    throw new TypeError("non-string passed for textInput")  unless isString(key)
    event.data = key
  event

$.fn.extend
  inputChar: ->
    char = "d"
    @trigger(getKeyEvent("keydown", char)).trigger(getKeyEvent("keypress", char)).trigger(getKeyEvent("textInput", char)).val(char).trigger(getKeyEvent("keyup", char)).trigger getKeyEvent("input", char)
    this

  down: ->
    keyCode = 40
    @trigger(getKeyEvent("keydown", keyCode)).trigger getKeyEvent("keyup", keyCode)
    this

initTypeahead = (selector)->
  engine = new Bloodhound
    datumTokenizer: (datum)-> datum.value
    queryTokenizer: Bloodhound.tokenizers.whitespace
    local: [{ value: 'dog animal' }, { value: 'pig animal' }, { value: 'moose animal' }, { value: 'bird ' }]

  engine.initialize()

  $(selector).typeahead(null,
    name: 'animals'
    source: engine.ttAdapter()
  ).inputChar().down()