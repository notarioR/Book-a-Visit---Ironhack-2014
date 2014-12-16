class VisitsController < ApplicationController
	def index
		@visits = Visit.all.to_json
		#puts @visits.inspect
	end

	def new
		 @visit = Visit.new
	end

	def show
		@visit = Visit.find params[:id]
	end

	def create
		@visit = Visit.new visit_params
		if @visit.save
			flash[:notice] = "Visit create successfully"
			redirect_to admin_dashboard_index_path	
		else
			flash.now[:error] = "Error"
			render 'new'
		end
	end

	def edit
		@visit = Visit.find params[:id]
	end

	def update
		@visit = Visit.find params[:id]
		if @visit.update_attributes visit_params 
			flash[:notice] = "Visit update successfully"
			redirect_to Visits_path
		end
	end

	def destroy
		@visit = Visit.find params[:id]
		if @visit.destroy
			flash[:notice] = "Visit destroy successfully"
			redirect_to visits_path
		end
	end

	def visit_params 
 		params.require(:visit).permit(:title, :description, :date, :hours, :minutes, :turn)
	end
end
