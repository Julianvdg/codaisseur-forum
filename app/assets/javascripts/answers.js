$(document).ready(function() {
  $('.edit-btn').click(function(){
    var id = $(this).attr('id');

    $('#answer-'+id).toggle();
    $('#form-'+id).toggle();
  })
});
