class CreateTarjeta < ActiveRecord::Migration[7.0]
  def change
    create_table :tarjeta do |t|
      t.integer :nro_tarjeta
      t.date :fecha_caducidad
      t.integer :user_id

      t.timestamps
    end
  end
end
