class CreateReceipes < ActiveRecord::Migration[7.0]
  def change
    create_table :receipes do |t|
      t.string :name
      t.string :preparation_time
      t.string :cooking_time
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
