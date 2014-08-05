$(document).ready(function(){
   $('.edit-maintenance-button').click(function() {
    var url;
    url = $(this).data('url');
    console.log(url);
    return $.ajax({
      url: url,
      type: "GET",
      success: function(data) {
        return $('#editMaintenance .modal-body').html(data);
      },
      error: function() {
        return $('#editMaintenance .modal-body').html("ERROR");
      }
    });
  });   
});