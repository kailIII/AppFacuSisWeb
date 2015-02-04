class CreateNroActa < ActiveRecord::Migration
  def change
    create_table :nro_actas do |t|
      t.integer :nro_acta, :limit => 15
      t.integer :tomo, :limit => 2

      t.timestamps
    end
  end
end
