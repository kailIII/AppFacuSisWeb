class CreateCarreras < ActiveRecord::Migration
  def change
    drop_table :carreras
    
    create_table :carreras do |t|
      t.string :nombre, :limit => 60
      t.integer :duracion, :limit => 1
      t.string :titulo_obtenido, :limit => 60
      t.references :facultad

      t.timestamps
    end
    add_index :carreras, :facultad_id
  end
  def down
    
  end
end
