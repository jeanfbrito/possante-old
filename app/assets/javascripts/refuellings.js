jQuery(function() {
  return Morris.Line({
    element: 'refuellings_chart',
    data: $('#refuellings_chart').data('refuellings'),
    xkey: 'date',
    ykeys: ['average_consumption'],
    labels: ['Consumo médio'],
    xLabels: ["day"]
  });
});
