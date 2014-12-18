class Reservation < ActiveRecord::Base
	validates :email, :date, presence: true 

	enum state: {   wait:  0,
                	accept:  1,
                	cancel:   2 }
 
 	def self.last_created_reservation(reservation) #Metodo de clase
		order(created_at: :desc).limit(reservation)
	end


	
end
