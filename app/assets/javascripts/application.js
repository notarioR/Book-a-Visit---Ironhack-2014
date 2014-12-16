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
// require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar
 $(document).ready(function() {

 		$('#user_password, #user_username').addClass('form-control');
 		

	    $('#calendar').fullCalendar({
	    	firstDay: 1,
	    	eventLimit: 2, // If you set a number it will hide the itens
    		eventLimitText: "Something", // Default is `more` (or "more" in the lang you pick in the option)  	
	    	buttonIcons: {
				prev: 'left-single-arrow',
		    	next: 'right-single-arrow',
		    	prevYear: 'left-double-arrow',
			    nextYear: 'right-double-arrow'
	    	},
	    	header: {
	  			left: 'prevYear, prev',
	  			center: 'title',
	  			right: 'next,today,nextYear'
			},
	    	events: visits,
	    	eventClick: function(visits, jsEvent, view) {

	    		$('.eventclick').html(visits.title + visits.description + visits.turn);
		       
		        // change the border color just for fun
		        $(this).css('background-color', 'red');

		    }
		});

		// $('.fc-day-number').append("<button class='add'><a href='events/new'>Add</a></button>");
		// $('.fc-day-number').addClass("parent-button");

});

