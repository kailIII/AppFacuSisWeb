class Facultad < ActiveRecord::Base
  self.table_name = "facultades"
  
  has_many :carreras
  has_many :sedes
  
  attr_accessible :direccion, :email, :nombre, :telefono
  
  def completo
    "#{nombre}"
  end
end
