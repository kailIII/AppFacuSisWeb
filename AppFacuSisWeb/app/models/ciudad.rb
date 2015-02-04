class Ciudad < ActiveRecord::Base
  self.table_name = "ciudades"
  attr_accessible :nombre
end
