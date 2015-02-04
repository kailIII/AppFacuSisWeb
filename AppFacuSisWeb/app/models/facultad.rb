class Facultad < ActiveRecord::Base
  self.table_name = "facultades"
  
  attr_accessible :direccion, :email, :nombre, :telefono
end
