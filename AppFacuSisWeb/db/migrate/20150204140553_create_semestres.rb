class CreateSemestres < ActiveRecord::Migration
  def change
    create_table :semestres do |t|
      t.string :descripcion, :limit => 60
      t.integer :numero, :limit => 2

      t.timestamps
    end
  end
end
