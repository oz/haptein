$(function () {
  var src = new EventSource('/time');

  src.addEventListener('message', function(e) {
    var data = JSON.parse(e.data);

    $('section.time').html($('<p>' + data.time + '</p>'));
  }, false);

  src.addEventListener('open', function(e) {
    // Connection was opened.
  }, false);

  src.addEventListener('error', function(e) {
    if (e.eventPhase == EventSource.CLOSED) {
      // Connection was closed.
    }
  }, false);

});
