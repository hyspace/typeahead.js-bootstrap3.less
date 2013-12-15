$(document).ready(function() {
  $('input').typeahead({
    name: 'repos'
  , local: ['Bootstrap 3', 'Bootstrap 2.3.2', 'Bootstrap by Twitter']
  });

  var haunt = ghostwriter.haunt({
    input: '#example'
  , interval: 500
  , manuscript: [
      ghostwriter.noop
    , 'Twi'
    , ghostwriter.backspace.repeat(3)
    , 'Boots'
    , ghostwriter.down.repeat(1)
    , ghostwriter.enter
    , ghostwriter.selectAll
    ]
  });

  $(document).on('click keydown', function(e) {
    !e.ghostwriter && haunt.pause();
  });

  haunt.start();

});
