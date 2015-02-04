class Universidad < ActiveRecord::Base
  self.table_name = "universidades"
  
  attr_accessible :direccion, :nombre, :telefono, :web
end
