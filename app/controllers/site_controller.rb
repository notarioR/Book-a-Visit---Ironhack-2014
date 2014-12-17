class SiteController < ApplicationController

	def home
	    @visits         = Visit.all
	    @events         = Event.all
		
		@calendar_items = ActiveModel::ArraySerializer \
				.new(@visits + @events,
	           each_serializer: CalendarItemSerializer).to_json

		@reservation = Reservation.all
		@onereservation = Reservation.new
	end
end
