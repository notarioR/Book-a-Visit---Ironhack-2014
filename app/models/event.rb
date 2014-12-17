class Event < ActiveRecord::Base
	validates :date, presence: true

	mount_uploader :image, EventUploader

	def self.last_created_events(events) #Metodo de clase
		order(created_at: :desc).limit(events)
	end
end
