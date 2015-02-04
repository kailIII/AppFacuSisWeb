class PeriodoLectivo < ActiveRecord::Base
  
  has_many :cursos
  has_many :asignacion_estado_alumnos
  
  attr_accessible :periodo
  
  def completo
    "#{periodo}"
  end
end
