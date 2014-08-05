// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$("i").tooltip({
    'selector': '',
    'placement': 'top'
  });



$(document).ready(function(){
   $('.edit-refill-button').click(function() {
    var url;
    url = $(this).data('url');
    return $.ajax({
      url: url,
      type: "GET",
      success: function(data) {
        return $('#editRefill .modal-body').html(data);
      },
      error: function() {
        return $('#editRefill .modal-body').html("ERROR");
      }
    });
  });   
});

$(document).ready(function(){
   $('.edit-maintenance-button').click(function() {
    var url;
    url = $(this).data('url');
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

