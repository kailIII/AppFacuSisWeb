class CreateTipoBecas < ActiveRecord::Migration
  def change
    create_table :tipo_becas do |t|
      t.string :descripcion, :limit => 60

      t.timestamps
    end
  end
end
