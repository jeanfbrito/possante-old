$(document).ready(function(){
   $('.edit-document-button').click(function() {
    var url;
    url = $(this).data('url');
    console.log(url);
    return $.ajax({
      url: url,
      type: "GET",
      success: function(data) {
        return $('#editDocument .modal-body').html(data);
      },
      error: function() {
        return $('#editDocument.modal-body').html("ERROR");
      }
    });
  });   
});