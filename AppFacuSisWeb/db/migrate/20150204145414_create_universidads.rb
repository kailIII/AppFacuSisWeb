class CreateUniversidads < ActiveRecord::Migration
  def change
    create_table :universidads do |t|
      t.string :nombre, :limit => 60
      t.text :direccion, :limit => 120
      t.string :telefono, :limit => 30
      t.string :web, :limit => 60

      t.timestamps
    end
  end
end
