class AddUsersRefToReceipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :receipes, :users, null: false, foreign_key: true
  end
end
