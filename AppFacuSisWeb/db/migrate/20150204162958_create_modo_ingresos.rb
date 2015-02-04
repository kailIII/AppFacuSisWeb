class CreateModoIngresos < ActiveRecord::Migration
  def change
    create_table :modo_ingresos do |t|
      t.string :descripcion, :limit => 60

      t.timestamps
    end
  end
end
