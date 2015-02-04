class CreatePeriodoLectivos < ActiveRecord::Migration
  def change
    create_table :periodo_lectivos do |t|
      t.integer :periodo, :limit => 4

      t.timestamps
    end
  end
end
