class CreatePosicions < ActiveRecord::Migration[7.0]
  def change
    create_table :posicions do |t|
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
