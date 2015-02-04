class EstadoAlumno < ActiveRecord::Base
  
  has_many :asignacion_estado_alumnos
  
  attr_accessible :nombre
end