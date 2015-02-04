class DiaSemanal < ActiveRecord::Base
  self.table_name = "dia_semanales"
  attr_accessible :nombre
end
