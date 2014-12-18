class Visit < ActiveRecord::Base
	
	mount_uploader :image, EventUploader
	
	def self.last_created_visits(visits) #Metodo de clase
		order(created_at: :desc).limit(visits)
	end
end
