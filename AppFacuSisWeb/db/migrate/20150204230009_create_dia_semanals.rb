class CreateDiaSemanals < ActiveRecord::Migration
  def change
    create_table :dia_semanales do |t|
      t.string :nombre, :limit => 30

      t.timestamps
    end
  end
end
