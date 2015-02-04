class CreateSedes < ActiveRecord::Migration
  def change
    create_table :sedes do |t|
      t.string :nombre, :limit => 60
      t.references :universidad
      t.references :facultad
      t.references :ciudad

      t.timestamps
    end
    add_index :sedes, :universidad_id
    add_index :sedes, :facultad_id
    add_index :sedes, :ciudad_id
  end
end
