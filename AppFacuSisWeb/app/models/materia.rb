class Materia < ActiveRecord::Base
  
  self.table_name = "materias"
  
  attr_accessible :alias, :codigo, :contenido, :hs, :nombre
  
  has_many :asignacion_docentes
end
