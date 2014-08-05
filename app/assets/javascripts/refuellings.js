//= require_tree .

$(document).ready(function() {
    lineChart();

    $(window).resize(function() {
        window.m.redraw();
    });

    $(document).on('page:change', function() {
      window.m.redraw();
    });
});

function lineChart() {
    window.m = Morris.Line({
    element: 'refuellings_chart',
    data: $('#refuellings_chart').data('refuellings'),
    xkey: 'date',
    ykeys: ['average_consumption'],
    labels: ['Consumo médio'],
    xLabels: ["day"],
    redraw: true,
    postUnits: ' km/l'
  });
}

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