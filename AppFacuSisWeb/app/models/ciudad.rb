class Ciudad < ActiveRecord::Base
  self.table_name = "ciudades"
  
  has_many :sedes
  
  attr_accessible :nombre
  
   def completo
    "#{nombre}"
  end
end
