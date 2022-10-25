class CreateAlquilers < ActiveRecord::Migration[7.0]
  def change
    create_table :alquilers do |t|
      t.float :precio
      t.datetime :vencimiento
      t.integer :user_id
      t.integer :auto_id

      t.timestamps
    end
  end
end
