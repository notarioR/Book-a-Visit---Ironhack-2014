class Admin::EventsController < AdminController
	def index
		@events = Event.all.to_json
		render layout: "admin"
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new events_params 
		if @event.save
			flash[:notice] = "Event create successfully"
			redirect_to admin_events_path
		else
			flash.now[:error] = "Error"
			render 'new'
		end
	end


	def events_params 
 		params.require(:event).permit(:title, :description, :date )
	end
end
