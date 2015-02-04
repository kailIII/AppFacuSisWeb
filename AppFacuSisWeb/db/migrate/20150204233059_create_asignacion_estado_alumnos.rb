class CreateAsignacionEstadoAlumnos < ActiveRecord::Migration
  def change
    create_table :asignacion_estado_alumnos do |t|
      t.string :nombre, :limit => 60
      t.references :alumno
      t.references :semestre
      t.references :periodo_lectivo
      t.references :materia
      t.references :sede
      t.references :estado_alumno

      t.timestamps
    end
    add_index :asignacion_estado_alumnos, :alumno_id
    add_index :asignacion_estado_alumnos, :semestre_id
    add_index :asignacion_estado_alumnos, :periodo_lectivo_id
    add_index :asignacion_estado_alumnos, :materia_id
    add_index :asignacion_estado_alumnos, :sede_id
    add_index :asignacion_estado_alumnos, :estado_alumno_id
  end
end
