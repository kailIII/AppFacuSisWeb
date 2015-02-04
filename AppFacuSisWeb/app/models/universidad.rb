class Universidad < ActiveRecord::Base
  self.table_name = "universidades"
  
  has_many :sedes
  
  attr_accessible :direccion, :nombre, :telefono, :web
  
   def completo
    "#{nombre}"
  end
end
