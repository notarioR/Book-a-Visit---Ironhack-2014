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
//= require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar
$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
    	firstDay: 1,
    	height: 500,
    	buttonIcons: {
		prev: 'left-single-arrow',
	    next: 'right-single-arrow',
	    prevYear: 'left-double-arrow',
	    nextYear: 'right-double-arrow'
    	},
    	header: {
  		left: 'prev',
  		center: 'title',
  		right: 'next,today'
		},


		dayClick: function() {
        alert('a day has been clicked!');
    	},

    	 events: [
        {
            title: 'My Event',
            start: '2014-12-12',
            description: 'This is a cool event'
        },
        // more events here
	    ],
	});
});

