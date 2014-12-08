class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def show
		@event = Event.find params[:id]
	end

	def create
		@event = Event.new event_params
		if @event.save
			flash[:notice] = "Project create successfully"
			#redirect_to action: 'index', controller: 'entries', project_id: @project.id
			redirect_to events_path
		else
			flash.now[:error] = "Error"
			render 'new'
		end
	end

	def edit
		@event = Event.find params[:id]
	end

	def update
		@event = Event.find params[:id]
		if @event.update_attributes event_params 
			flash[:notice] = "Event update successfully"
			redirect_to events_path
		end
	end

	def destroy
		@event = Event.find params[:id]
		if @event.destroy
			flash[:notice] = "Event destroy successfully"
			redirect_to events_path
		end
	end

	def event_params 
 		params.require(:event).permit(:title, :description, :date, :hours, :minutes)
	end
end
