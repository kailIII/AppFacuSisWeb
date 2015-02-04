class CreateNota < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.integer :nro, :limit => 1
      t.string :letra, :limit => 60

      t.timestamps
    end
  end
end
