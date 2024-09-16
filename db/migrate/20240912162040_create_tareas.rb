class CreateTareas < ActiveRecord::Migration[7.2]
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.text :descripcion
      t.boolean :completado
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
