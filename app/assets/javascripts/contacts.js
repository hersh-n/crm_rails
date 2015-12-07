$(document).on('ready page:load',function(){
	$('#search').submit(function(event){
		event.preventDefult();
		var searchValue = $('#search').val();

		$.getScript('/contacts?search=' + searchValue)
		});
	});