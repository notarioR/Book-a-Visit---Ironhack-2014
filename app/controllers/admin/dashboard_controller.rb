class Admin::DashboardController < AdminController
	PER_PAGE = 10
	def index
		@visit = Visit.paginate(:page => params[:page], :per_page => 10)
		@visits = Visit.all.map{|x| {id: x.id, date: x.date, title: x.title + ' ' + x.description}}.to_json
		@reservation = Reservation.paginate(:page => params[:page], :per_page => 10)

		render layout: "admin"
	end

	def new
		@visit = Visit.new
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
end
