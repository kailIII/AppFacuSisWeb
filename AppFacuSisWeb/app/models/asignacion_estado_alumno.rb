class AsignacionEstadoAlumno < ActiveRecord::Base
  
  belongs_to :alumno
  belongs_to :semestre
  belongs_to :periodo_lectivo
  belongs_to :materia
  belongs_to :sede
  belongs_to :estado_alumno
  
  attr_accessible :nombre, :alumno_id, :semestre_id, :periodo_lectivo_id, 
                  :materia_id, :sede_id, :estado_alumno_id
end
