class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :descripcion, :limit => 60

      t.timestamps
    end
  end
end
