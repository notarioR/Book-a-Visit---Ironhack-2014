class AddTurnToVisit < ActiveRecord::Migration
  def change
  	add_column :visits, :turn, :bool, default: false
  end
end
