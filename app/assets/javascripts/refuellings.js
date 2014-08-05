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
