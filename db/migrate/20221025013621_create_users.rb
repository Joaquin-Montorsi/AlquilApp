class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :rol
      t.string :nombre
      t.string :apellido
      t.integer :DNI
      t.string :email
      t.integer :estado
      t.string :liscencia_url
      t.string :cedula_azul_url
      t.integer :posicion_id

      t.timestamps
    end
  end
end
