class ReservationsController < ApplicationController

	def index
	 	@reservation = Reservation.all
	# 	#puts @events.inspect
	end

	def new
		 @reservation = Reservation.new
	end

	def edit
		@reservation = Reservation.find params[:id]
		@prepend_form = [@reservation]
	end

	def create
		@reservation = Reservation.new reservation_params 
		if @reservation.save
			flash[:notice] = "Reservation create successfully, we will notify you within 24h"
			redirect_to "/"
		else
			flash.now[:error] = "Error"
			render 'new'
		end
	end

	def update
		@reservation = Reservation.find params[:id]
		if @reservation.update_attributes reservation_params 
			flash[:notice] = "Reservation update successfully"
			redirect_to "admin/dashboard"
		end
	end
	
	def reservation_params 
 		params.require(:reservation).permit(:title, :phone, :email, :members, :date, )
	end
end
