document.addEventListener("turbolinks:load", function() {

  $('.edit-btn').click(function(){
    var id = $(this).attr('id');
    $('#answer-'+id).toggle();
    $('#form-'+id).toggle();
  })


  $('.save-edit').click(function() {

    var answer_id = $(this).attr('answer_id');
    var question_id = $(this).attr('question_id');
    var body = $('#form-'+answer_id + ' .edit-body').val();

    $.ajax({
      url: '/questions/'+question_id+'/answers/'+answer_id,
      type: 'PUT',
      dataType: "json",
      data: {'body': body, 'question_id': question_id, 'answer_id': answer_id},
      success: function(response) {
        $('#answer-'+answer_id).html(response.body).show();
        $('#form-'+answer_id).hide();

      },
      error: function(response) {
        console.log(response);
      }
    })


  })
});
