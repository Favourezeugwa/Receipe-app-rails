class AddUsersRefToInventories < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :users, null: false, foreign_key: true
  end
end
