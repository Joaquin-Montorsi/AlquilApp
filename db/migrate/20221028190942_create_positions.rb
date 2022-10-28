class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.float :x
      t.float :y
      t.integer :user_id
      t.integer :car_id

      t.timestamps
    end
  end
end
