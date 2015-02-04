class CreateAsignacionDocentes < ActiveRecord::Migration
  def change
    create_table :asignacion_docentes do |t|
      t.string :nombre, :limit => 60
      t.references :docente
      t.references :curso
      t.references :materia
      t.references :dia_semanal

      t.timestamps
    end
    add_index :asignacion_docentes, :docente_id
    add_index :asignacion_docentes, :curso_id
    add_index :asignacion_docentes, :materia_id
    add_index :asignacion_docentes, :dia_semanal_id
  end
end
