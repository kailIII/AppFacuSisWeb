class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :ci, :limit => 30
      t.string :nombres, :limit => 60
      t.string :apellidos, :limit => 60
      t.date :fnac
      t.string :lnac, :limit => 60
      t.text :direccion, :limit => 120
      t.string :telefono, :limit => 30
      t.string :celular, :limit => 30
      t.string :email, :limit => 60
      t.string :est_civil, :limit => 30
      t.string :genero, :limit => 30
      t.string :nacionalidad, :limit => 60
      t.string :procedencia, :limit => 60

      t.timestamps
    end
  end
end
