class AddHourAndMinutes < ActiveRecord::Migration
  def change
  	add_column :events, :hours, :integer
  	add_column	:events, :minutes, :integer    

  end
end
