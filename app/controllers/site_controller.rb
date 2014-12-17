class SiteController < ApplicationController

	def home
		@visit = Visit.all
		@visits = Visit.all.map{|x| {id: x.id, date: x.date, title: x.title + ' - ' + x.description}}.to_json
		@reservation = Reservation.all
		@onereservation = Reservation.new
	end


end
