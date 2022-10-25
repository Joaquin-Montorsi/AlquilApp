class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes do |t|
      t.text :descripcion
      t.string :user_id
      t.string :auto_id

      t.timestamps
    end
  end
end
