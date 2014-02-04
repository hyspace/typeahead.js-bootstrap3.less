(function($){
  function isString(obj) {
    return typeof obj === "string";
  }
  function getKeyEvent(type, key) {
    var event = $.Event(type);
    event.ghostwriter = true;
    if (type === "keypress") {
      event.which = event.keyCode = event.charCode = isString(key) ? key.charCodeAt(0) : key;
    } else if (type === "keydown" || type === "keyup") {
      event.charCode = 0;
      event.which = event.charCode = isString(key) ? key.toUpperCase().charCodeAt(0) : key;
    } else if (type === "textInput") {
      if (!isString(key)) {
        throw new TypeError("non-string passed for textInput");
      }
      event.data = key;
    }
    return event;
  }
  $.fn.extend({
    inputChar : function(){
      char = 'b'
      this
      .trigger(getKeyEvent("keydown", char))
      .trigger(getKeyEvent("keypress", char))
      .trigger(getKeyEvent("textInput", char))
      .val(char)
      .trigger(getKeyEvent("keyup", char))
      .trigger(getKeyEvent("input", char))
      return this
    },
    down : function(){
      var keyCode = 40;
      this
      .trigger(getKeyEvent("keydown", keyCode))
      .trigger(getKeyEvent("keyup", keyCode));
      return this
    },
  })
})(jQuery);