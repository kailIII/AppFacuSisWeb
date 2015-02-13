class EstadoAlumno < ActiveRecord::Base
  
  has_many :asignacion_estado_alumnos
  
  attr_accessible :nombre
  
  def mostrar_nombre
    "#{nombre}"
  end
end