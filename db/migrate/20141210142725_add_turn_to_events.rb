class AddTurnToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :turn, :bool, default: false
  end
end
