class CreateAutos < ActiveRecord::Migration[7.0]
  def change
    create_table :autos do |t|
      t.string :modelo
      t.string :marca
      t.string :patente
      t.string :color
      t.string :img_url
      t.integer :nro_puertas
      t.integer :nro_asientos
      t.integer :estado
      t.boolean :encendido
      t.float :velocidad
      t.integer :cant_combustible
      t.integer :posicion_id
      t.integer :user_id

      t.timestamps
    end
  end
end
