class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.integer :codigo, :limit => 15
      t.string :nombre, :limit => 60
      t.string :alias, :limit => 30
      t.string :hs, :limit => 10
      t.text :contenido, :limit => 120

      t.timestamps
    end
  end
end
