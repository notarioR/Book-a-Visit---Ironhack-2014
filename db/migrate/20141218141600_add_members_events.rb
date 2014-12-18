class AddMembersEvents < ActiveRecord::Migration
  def change
    add_column :events, :members, :integer
  end
end
