//contact form
$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})

$('#myTabs a[href="#profile"]').tab('show') // Select tab by name
$('#myTabs a:first').tab('show') // Select first tab
$('#myTabs a:last').tab('show') // Select last tab
$('#myTabs li:eq(2) a').tab('show') // Select third tab (0-indexed)


// module
function total() {
  var qty = parseInt($('#nb-meals').val());

  if (isNaN(qty)) {
    qty = 0;
  }


  var starterMin = 0;
  var starterMax = 0;
  var dishMin = 0;
  var dishMax = 0;
  var desertMin = 0;
  var desertMax = 0;
  var drinkMin = 0;
  var drinkMax = 0;

  if ($('#starter').is(':checked')) {
    starterMin = $('#starter').data('min');
    starterMax = $('#starter').data('max');
  }

  if ($('#dish').is(':checked')) {
    dishMin = $('#dish').data('min');
    dishMax = $('#dish').data('max');
  }

  if ($('#desert').is(':checked')) {
    desertMin = $('#desert').data('min');
    desertMax = $('#desert').data('max');
  }

  if ($('#drink').is(':checked')) {
    drinkMin = $('#drink').data('min');
    drinkMax = $('#drink').data('max');
  }

   var totalMin = qty * (starterMin + dishMin + desertMin + drinkMin);
   var totalMax = qty * (starterMax + dishMax + desertMax + drinkMax)
  $('#totalMin').html(totalMin);
  $('#totalMax').html(totalMax);

  var totalMinp = (starterMin + dishMin + desertMin + drinkMin);
  var totalMaxp = (starterMax + dishMax + desertMax + drinkMax)
  $('#totalMinp').html(totalMinp);
  $('#totalMaxp').html(totalMaxp);
}

$(document).ready(function(){
  $('#nb-meals').on('change mouseup', function(){
    total();
  });

  $('#starter, #dish, #desert, #drink').change(function(){
    total();
  });

  total();
});
