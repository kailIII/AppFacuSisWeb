class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
