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
//= require bootstrap

 $(document).ready(function() {

 		$('#user_password, #user_username').addClass('form-control');
 		$('.button-visit').click(function(){
			$('.render-last-visit').toggle(1000);
		});

		$('.button-reservation').click(function(){
			$('.render-reservation').toggle(1000);
		});

		$('.button-event').click(function(){
			$('.render-last-events').toggle(1000);
		});
 		
 		var url = 'events/';

	    $('#calendar').fullCalendar({
	    	firstDay: 1,
	    	eventLimit: 2, // If you set a number it will hide the itens
    		eventLimitText: "view more", // Default is `more` (or "more" in the lang you pick in the option) 
    		height: 550, 	
	    	buttonIcons: {
				prev: 'left-single-arrow',
		    	next: 'right-single-arrow',
		    	prevYear: 'left-double-arrow',
			    nextYear: 'right-double-arrow',
			    
	    	},
	    	header: {
	  			left: 'prevYear, prev',
	  			center: 'title',
	  			right: 'next,today,nextYear'
			},
			
	    	events: visits,
	    	eventClick: function(event) {
	    		console.log(event.cl)
	    		if (event.cl == 'Event'){
	    			$.ajax({
		    			url: url + event.id,
		    			dataType: 'script' 
	    			});
	    		}else{
	    			$.ajax({
		    			url: 'visits/' + event.id,
		    			dataType: 'script' 
	    			});
	    		};
	    		

	    		$('.eventclick').text(event.title );   
		    }
		});
});

