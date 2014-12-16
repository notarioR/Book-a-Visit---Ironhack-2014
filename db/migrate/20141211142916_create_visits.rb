class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :title
      t.string :name
      t.text :description
      t.date :date
      t.timestamps
    end
  end
end
