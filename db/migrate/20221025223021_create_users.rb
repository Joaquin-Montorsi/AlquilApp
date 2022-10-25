class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :rol
      t.string :name
      t.string :lastName
      t.integer :document
      t.string :email
      t.integer :state
      t.string :license_url
      t.string :blueCard_url
      t.integer :position_id

      t.timestamps
    end
  end
end
