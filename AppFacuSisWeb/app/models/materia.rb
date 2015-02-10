class Materia < ActiveRecord::Base
  
  self.table_name = "materias"
  
  has_many :asignacion_docentes
  has_many :asignacion_estado_alumnos
  
  attr_accessible :alias, :codigo, :contenido, :hs, :nombre
  
  def nombre_completo
    "#{nombre}"
  end
 
end