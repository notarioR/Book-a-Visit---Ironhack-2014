class AddImageForVisits < ActiveRecord::Migration
  def change
    add_column :visits, :image, :string
  end
end
