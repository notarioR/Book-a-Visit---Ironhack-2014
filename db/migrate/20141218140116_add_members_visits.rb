class AddMembersVisits < ActiveRecord::Migration
  def change
    add_column :visits, :members, :integer
  end
end
