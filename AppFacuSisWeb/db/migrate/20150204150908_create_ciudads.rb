class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.string :nombre, :limit => 60

      t.timestamps
    end
  end
end
