$(document).on('ready page:load',function(){
	$('#search').submit(function(event){
		event.preventDefault();
		var searchValue = $('#first_name').val();

		$.getScript('/contacts?first_name=' + searchValue)
		});
	});