class Semestre < ActiveRecord::Base
  
  has_many :cursos
  has_many :asignacion_estado_alumnos
  
  attr_accessible :descripcion, :numero
  
  def completo
    "#{descripcion}"
  end
end
