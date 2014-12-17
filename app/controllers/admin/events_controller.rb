class Admin::EventsController < AdminController
	before_action :set_event, only: %i(edit show update destroy)

	def index
		@eventsindex = Event.all
		@events = Event.all.to_json
		render layout: "admin"
	end

	def new
		@event = Event.new
	end

	def edit
	end

	def show
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

	def update
		 if @event.update_attributes events_params 
		 	flash[:notice] = "Event update successfully"
		 	redirect_to admin_events_path
		 end
	end

	def destroy
		 @event.destroy
			respond_to do |format|
				format.js
			end
	end

  private

	def events_params 
 		params.require(:event).permit(:title, :description, :date, :image, :url)
	end

  def set_event
    @event = Event.find(params[:id])
  end
end
