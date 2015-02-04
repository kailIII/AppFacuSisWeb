class CreateFacultads < ActiveRecord::Migration
  def change
    create_table :facultades do |t|
      t.string :nombre, :limit => 60
      t.text :direccion, :limit => 120
      t.string :telefono, :limit => 30
      t.string :email, :limit => 30

      t.timestamps
    end
  end
end
