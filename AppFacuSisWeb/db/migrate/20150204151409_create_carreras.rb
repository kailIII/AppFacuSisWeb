class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre, :limit => 60
      t.integer :duracion, :limit => 2
      t.string :titulo_obtenido, :limit => 60

      t.timestamps
    end
  end
end
