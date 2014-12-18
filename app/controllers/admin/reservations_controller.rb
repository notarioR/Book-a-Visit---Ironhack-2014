require 'pry'
class Admin::ReservationsController < AdminController

	def accept
		@reservation = Reservation.find(params[:id])
		@reservation.accept!
		@reservation.save
		redirect_to admin_reservations_path
	end

	def index
		@reservation = Reservation.all.paginate(:page => params[:page], :per_page => 5)
	end

	def edit
		@reservation = Reservation.find params[:id]
		@prepend_form = [:admin, @reservation]
	end

	def update
		@reservation = Reservation.find params[:id]
		 if @reservation.update_attributes reservation_params 
		 	flash[:notice] = "Event update successfully"
		 	redirect_to admin_reservations_path
		 end
	end

	def destroy
		@reservation = Reservation.find params[:id]
		@reservation.destroy
			respond_to do |format|
				format.js
			end	
	end
	
	protected

	def reservation_params 
 		params.require(:reservation).permit(:title, :phone, :email, :members, :date, )
	end
	

end
