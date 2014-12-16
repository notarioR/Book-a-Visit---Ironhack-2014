class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
	      t.string :title
	      t.integer :phone
	      t.string :email
	      t.integer :members
	      t.integer :state, default: 0
	      t.integer :date
	      t.text :comments
	      t.timestamps
	      t.timestamps
    end
  end
end
