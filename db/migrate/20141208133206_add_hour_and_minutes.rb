class AddHourAndMinutes < ActiveRecord::Migration
  def change
  	t.integer	:hours    
	t.integer 	:minutes
  end
end
