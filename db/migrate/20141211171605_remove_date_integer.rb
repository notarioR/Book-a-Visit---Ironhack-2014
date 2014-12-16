class RemoveDateInteger < ActiveRecord::Migration
  def change
  	remove_column :reservations, :date
  	add_column	:reservations, :date, :date   
  end
end
