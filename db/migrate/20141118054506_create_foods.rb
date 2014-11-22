class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food_type
      t.string :string
      t.string :name
      t.date :expiration

      t.timestamps
    end
  end
end
