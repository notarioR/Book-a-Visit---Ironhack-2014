class Admin::DashboardController < AdminController


	def index
		@reservations = Reservation.all
		@visits = Visit.all 

		@visit = Visit.all.paginate(:page => params[:page], :per_page => 10)
		@reservation = Reservation.paginate(:page => params[:page], :per_page => 5)
		
		@events         = Event.all
		@calendar_items = ActiveModel::ArraySerializer \
			.new(@visits + @events,
           each_serializer: CalendarItemSerializer).to_json

		@onereservation = Reservation.new
	
		render layout: "admin"
	end

	def new
		@visit = Visit.new
		respond_to do |format|
			format.js
		end
	end
	
	def edit
		@visit = Visit.find params[:id]
	end
	def update
		@visit = Visit.find params[:id]
		if @visit.update_attributes visit_params 
			flash[:notice] = "Visit update successfully"
			redirect_to admin_dashboard_index_path
		end
	end

	def destroy
		@visit = Visit.find params[:id]
		@visit.destroy
			respond_to do |format|
				format.js
			end	
	end

	protected

	def visit_params 
 		params.require(:visit).permit(:title, :description, :date, :hours, :minutes, :turn, :members, :image)
	end
end
