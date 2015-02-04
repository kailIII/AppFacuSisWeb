class AsignacionEstadoAlumno < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :semestre
  belongs_to :periodo_lectivo
  belongs_to :materia
  belongs_to :sede
  belongs_to :estado_alumno
  attr_accessible :nombre
end
