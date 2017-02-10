$(document).ready(function() {
  $('#mood-selector').on('submit', function(e){
    e.preventDefault();

    var url = $(this).attr('action');
    var data = $(this).serialize();

    var ajaxRequest = $.ajax({
      url: url,
      method: 'POST',
      data: data
    });

    ajaxRequest.done(function(response){
      $('#spotify-player').attr('src', response);
      $('#spotify-player').toggle();
      $('#mood-selector').hide();
    })
  })
});
