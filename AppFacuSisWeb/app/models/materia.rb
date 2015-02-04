class Materia < ActiveRecord::Base
  self.table_name = "materias"
  attr_accessible :alias, :codigo, :contenido, :hs, :nombre
end
