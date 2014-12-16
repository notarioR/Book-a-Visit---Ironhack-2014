class Visit < ActiveRecord::Base
	
	def self.last_created_visits(visits) #Metodo de clase
		order(created_at: :desc).limit(visits)
	end
end
