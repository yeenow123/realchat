$(function() {
	if ($(".chat").length > 0) {
		setTimeout(updateMessages, 5000);
	}
});

function updateMessages() {
	
	var after = $('.message:last').attr('data-time');

	$.getScript('/messages.js?after=' + after);
	setTimeout(updateMessages, 5000);
}


