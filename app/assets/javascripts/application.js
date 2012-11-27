// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .

$(function() {
	var faye = new Faye.Client('http://localhost:9292/faye'); //Will need to change URL when going into production

	var subscription = faye.subscribe('/messages/public', function (data) {
		$(".message:last").after(
			"<div class='message'>" +
			"<span class='messagesender'>" + data.user + "</span>" +
			"<span class='messagetext'>" + data.message + "</span>" +
			"<span class='timestamp'>" + data.created + "</span><br /></div>"
			);

		$("div.chat").animate({ scrollTop: $("div.chat")[0].scrollHeight }, 2000);

		var lastmsg = $(".message:last");
		lastmsg.effect('highlight', {}, 3000);
	});

})

