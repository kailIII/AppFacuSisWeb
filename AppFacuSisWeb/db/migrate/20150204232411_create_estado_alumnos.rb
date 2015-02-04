class CreateEstadoAlumnos < ActiveRecord::Migration
  def change
    create_table :estado_alumnos do |t|
      t.string :nombre, :limit => 60

      t.timestamps
    end
  end
end
