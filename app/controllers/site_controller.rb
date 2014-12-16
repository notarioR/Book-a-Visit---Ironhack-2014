class SiteController < ApplicationController

	def home
		@visit = Visit.all
		@visits = Visit.all.to_json
		@reservation = Reservation.all
		@onereservation = Reservation.new
	end


end
