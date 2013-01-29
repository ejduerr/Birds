$(document).ready(function(){
  $('.bxslider').bxSlider({auto: true});
  $( ".tabs" ).tabs();
  
	var atoz = $('#atoz');
	$('input#q').quicksearch('#atoz ul li' , {
		'delay': 100,
		'selector': 'a',
		'onAfter': function () {
			var inputString = $('input', atoz).val();
			if (inputString) {
				$('li a', atoz).removeHighlight().highlight(inputString);
			} else {
				$('li a', atoz).removeHighlight();
			}
		}
	});

});